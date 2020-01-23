<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .receipt{
            width: 700px;
        }
    </style>
    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }

    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }

    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }

    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }

    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }

    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }

    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }

    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }

    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }

    .invoice-box table tr.item.last td {
        border-bottom: none;
    }

    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }

    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }

        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }

    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }

    .rtl table {
        text-align: right;
    }

    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
</head>
<body>
<div class="receipt">
    <div class="card">
        <div class="card-header">
            <div class="card-title">
                <h2 class="text-center">{{ $profile->name }}</h2>
                <h5 class="text-center">{{ $profile->address }}</h5>
                <h5 class="text-center">{{ $profile->city }}</h5>
            </div>
        </div>
        <div class="card-body">
            <table width="100%">
                <tr>
                    <td><h5>Tanggal :{{ Date::parse($order->created_at)->format('d/m/y')}}</h5></td>
                    <td><h5>No Faktur : {{$order->invoice}}</h5></td>
                </tr>
                <tr>
                    <!--<td><h5>{{ Date::parse($order->created_at)->format('H:i')}}</h5></td>-->
                    <td><h5>Kepada : {{$order->customer_name}}</h5></td>
                </tr>
            </table>
            <table width="100%" class="table-striped">
                <tr>
                    <td>Banyaknya</td>
                    <td>Nama Barang</td>
                    <td>Merek Barang</td>
                    <td>Harga Satuan</td>
                    <td>Total Harga</td>
                </tr>
                @foreach ($order->orderDetail as $item)
                <tr>
                     <td><h6>{{$item->qty}} </h6>
                     <td><h6>{{ $item->product_name}}</h6></td>
                     <td><h6>{{ $item->product_merk}}</h6></td>
                     <td><h6>{{ number_format($item->product_price)}}</h6></td> 
                     <td>Rp.{{ number_format($item->subtotal)}}</td>
                </tr>
                @endforeach
            </table>
          
            <table width="100%">
                  <hr size="10px">
                <tr>
                    <td colspan="3"><h6><b>TOTAL</b></h6></td>
                    <td colspan="3"><h5><b>Rp.{{number_format($order->total)}},-</b></h5></td>
                </tr>
                <!--<tr>
                    <td><h6><b>BAYAR</b></h6></td>
                    <td colspan="3"><h6>Rp.{{number_format($order->pay)}},-</h6></td>
                </tr>
                <tr>
                    <td><h6><b>KEMBALI</b></h6></td>
                    <td colspan="3"><h6>Rp.{{number_format($order->pay - $order->total)}},-</h6></td>
                </tr>-->
                <tr>
                    <td>Tanda Terima <br><br><br><br></td>
                    <td colspan="4">Hormat Kami <br><br><br><br></td>
                </tr>
                <tr>
                    <td>________________</td>
                    <td colspan="4">________________</td>
                </tr>
                <tr>
                    <br>
                    <td colspan="3" class="text-center"><h5>Terima Kasih Atas Kunjungan Anda</h5></td>
                </tr>
                <tr>
                    <td colspan="3" class="text-center"><h6>{{ $profile->phone }}</h6></td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>