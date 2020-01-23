<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Alert, Auth;
use App\Models\Order;
use App\Models\Temporder;
use App\Models\Orderdetail;
use App\Models\Profile;
use PDF;

class OrderController extends Controller
{
    public function process(Request $request)
    {
        $this->validate($request,[
            'customer' => 'required'
        ],
        [
            'customer.required' => 'Nama Customer Belum Di Isi'
        ]);

        if ($request->pay < $request->total) {
            Alert::warning('Jumlah Pembayaran kurang');
            return redirect()->back();
        }
        
        $latest = Order::orderBy('id', 'DESC')->first();
        if (!$latest) {
            $invoice = '0001';
        } else {
            $invoice = sprintf('%04d',$latest->invoice+1);
        }
               
               
        $temp_order = Temporder::all();
        $order = Order::create([
            'invoice' => $invoice,
            'customer_name' => $request->customer,
            'total' => $request->total,
            'pay' => $request->pay,
            'user_id' => Auth::user()->id,
            'note' => $request->note
        ]);
        foreach ($temp_order as $item) 
        {
            Orderdetail::create([
                'order_id' => $order->id,
                'product_id' => $item->product_id,
                'product_name' => $item->product_name,
                'product_merk' => $item->product_merk,
                'product_price' => $item->product_price,
                'satuan' => $item->satuan,
                'qty' => $item->qty,
                'subtotal' => $item->subtotal
            ]);
        }

        Temporder::query()->truncate();      
        return redirect()->route('detailorder');
    }

    public function detailorder()
    {
        $lastOrder = Order::latest()->first();
        return view('order.detail', compact('lastOrder'));
    }
   
    public function receipt(Order $order)
    {   
       
        $profile = Profile::first();
        $pdf = PDF::loadview('order.receipt',compact('order',$profile))->setPaper('a4','landscape');
        return $pdf->Download('laporan-pdf.pdf');

        //return view('order.receipt', compact('order','profile'));
        //return $pdf->download('nota-pdf');
    }
    
    public function index()
    {
        $orders = Order::orderBy('id','desc')->get();
        $items = new Orderdetail;
        return view('order.index', compact('orders','items'));
    }

    public function show(Order $order)
    {
        $profile = Profile::first();
        return view('order.show', compact('order','profile'));
    }

}
