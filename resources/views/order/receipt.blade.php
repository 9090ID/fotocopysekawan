<!DOCTYPE html>

<head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .receipt{
            width: 1200px;
             margin: 0 auto;    
        }
       
            .nota1 {
                border-bottom: 2px dashed;
            }
    @page-break-after:{
                margin: 2em 3.5em;
                }
    </style>

</head>
<body>
<div class="receipt">
    <div class="card">
        <div class="card-header">
            <table>
                <tr>
               
                <td colspan="2">CV. Allya Assakhi <br>
                    Jln. Lintas Sumatera Jl. Jambi - Muaro Bulian No. Km. 15 <br>
                    Mendalo Indah, Kec. Jambi Luar Kota, Muaro Jambi,36122 <br>
                    Telp. 0852 6944 2025  </td>
                    <td colspan="4">
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbspNo Faktur : {{$order->invoice}} <br>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbspTanggal :{{ Date::parse($order->created_at)->format('d/m/y')}} <br>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbspKepada : {{$order->customer_name}}
                    </td>
                </tr>
            </table>
        </div>
       
        <div class="card-body">
            <table width="100%">
                <tr class="nota1">
                    <td colspan="2"><b>Banyaknya</b></td>
                    <td><b>Nama Barang</b></td>
                    <td><b>Merek Barang</b></td>
                    <td><b>Harga Satuan</b></td>
                    <td><b>Total Harga</b></td>
                </tr>
        
                @foreach ($order->orderDetail as $item)
                <tr>
                     <td ><h6>{{$item->qty}} </h6></td>
                     <td><h6>{{$item->satuan}}</h6></td>
                     <td colspan=""><h6>{{ $item->product_name}}</h6></td>
                     <td><h6>{{ $item->product_merk}}</h6></td>
                     <td><h6>Rp.{{ number_format($item->product_price)}}</h6></td> 
                     <td>Rp.{{ number_format($item->subtotal)}}</td>
                </tr>
                
                @endforeach
           
                <tr style="border-bottom: 2px dashed;"></tr>
                <tr style="border-bottom: 2px dashed;">
                    <td colspan="5" align="center"><h5><b>TOTAL</b></h5></td>
                
                    <td><h5><b>Rp.{{number_format($order->total)}},-</b></h5></td>
                </tr>
            </table>
          
            <table width="100%">
                <tr>
                    <td>Tanda Terima <br><br><br><br></td>
                    <td colspan="6">Hormat Kami <br><br><br><br></td>
                </tr>
                <tr>
                    <td>________________</td>
                    <td colspan="6">________________</td>
                </tr>
                <tr>
                    <td colspan="6" class="text-center"><h5>Terima Kasih Atas Kunjungan Anda</h5></td>
                </tr>
              
            </table>

            
        </div>
    </div>
</div>

</body>
</html>