<html xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Crud</title>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
</head>

<body class="container">
<h1 align="center">Crud Jquery Ajax and Java Spring Boot 2 </h1>
</br>
</br>
<hr>
<div class="container">
    <div class="button0" align="center">
        <button type="button1" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal1" id="go1"
                data-placement="bottom" title="Добавить строку">
            Добавить
        </button>
    </div>
</div>
<hr>
<div class="modal fade " id="myModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog bg-primary" role="document">
        <div class="modal-content ">
            <div class="modal-header bg-primary">
                <h5 class="modal-title" id="exampleModalLabel">Данные</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="false">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container content" align="center" id="div">
                    <form method="post" class="was-validated" action="/action" id="user_data">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">ID<span class="red">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" name="id" id="id" placeholder="ID" class="form-control" disabled>
                                <div class="valid-feedback">Заполнено</div>
                                <div class="invalid-feedback">Заполните данное поле</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Имя<span class="red">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" id="name" name="name" placeholder="Имя" class="form-control"
                                       required/>
                                <div class="valid-feedback">Заполнено</div>
                                <div class="invalid-feedback">Заполните данное поле</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Фамилия<span class="red">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" id="firstname" name="firstname" placeholder="Фамилия"
                                       class="form-control" required/>
                                <div class="valid-feedback">Заполнено</div>
                                <div class="invalid-feedback">Заполните данное поле</div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Отчество<span class="red">*</span></label>
                            <div class="col-sm-6">
                                <input type="text" id="lastname" name="lastname" placeholder="Отчество"
                                       class="form-control" required/>
                                <div class="valid-feedback">Заполнено</div>
                                <div class="invalid-feedback">Заполните данное поле</div>
                            </div>

                        </div>
                    </form>
                    <div class="modal-footer">
                        <div class="form-group">
                            <input class="btn btn-warning" data-dismiss="modal" id="btn-update" type="submit"
                                   value="Изменить"><span class="oi oi-eyedropper"></span>
                            <input class="btn btn-primary" data-dismiss="modal" id="btn-add" type="submit"
                                   value="Сохранить" required/>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

</br>
</br>

<table class="table" id="my-ajax-table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Фамилия</th>
        <th>Имя</th>
        <th>Отчество</th>
        <th>Изменить</th>
        <th>Удалить</th>
    </tr>
    </thead>
    <tbody id="SetStudentList">
    <tr id="LoadingStatus" style="color:red"></tr>
    </tbody>
</table
<hr>
<style>
    table {
        width: 100%; /* Ширина таблицы */
        border: 7px double black; /* Рамка вокруг таблицы */
        border-collapse: collapse; /* Отображать только одинарные линии */
    }

    th {
        text-align: left; /* Выравнивание по левому краю */
        background: darksalmon; /* Цвет фона ячеек */
        padding: 7px; /* Поля вокруг содержимого ячеек */
        border: 2px solid black; /* Граница вокруг ячеек */
    }

    td {
        padding: 7px; /* Поля вокруг содержимого ячеек */
        border: 2px solid black; /* Граница вокруг ячеек */
    }
</style>
<script>
  $(function () {
 //       $('#btn-add').click(function () {
 //           var fId = $('input[name="id"]');
 //           var fName = $('input[name="name"]');
 //           var fFirstName = $('input[name="firstname"]');
  //          var fLastName = $('input[name="lastname"]');
//            var _id = fId.val();
//            var _name = fName.val();
//            var _firstname = fFirstName.val();
 //           var _lastname = fLastName.val();
//            fId.val('');
//            fName.val('');
//            fFirstName.val('');
//            fLastName.val('');
//            var _tr = '<tr> <td>' + _id + '</td> <td>' + _name + '</td> <td>' + _firstname + '</td> <td>' + _lastname + '</td> <td><button type="button" class="btn btn-warning btn-edit" data-toggle="modal" data-target="#myModal1">Изменить</button></td> <td><button type="button" class="btn btn-danger btn-delete">Удалить</button> </td></tr>';

 //           $('tbody').append(_tr);

 //       });
        var _trEdit = null;
        $(document).on('click', '.btn-edit', function () {
            _trEdit = $(this).closest('tr');
            var _id = $(_trEdit).find('td:eq(0)').text();
            var _name = $(_trEdit).find('td:eq(1)').text();
            var _firstname = $(_trEdit).find('td:eq(2)').text();
            var _lastname = $(_trEdit).find('td:eq(3)').text();



            $('input[name="id"]').val(_id);
            $('input[name="name"]').val(_name);
            $('input[name="firstname"]').val(_firstname);
            $('input[name ="lastname"]').val(_lastname);

        });

        $('#btn-update').click(function () {
            if (_trEdit) {
                var fId = $('input[name="id"]');
                var fName = $('input[name="name"]');
                var fFirstName = $('input[name="firstname"]');
                var fLastName = $('input[name="lastname"]');
                var _id = fId.val();
                var _name = fName.val();
                var _firstname = fFirstName.val();
                var _lastname = fLastName.val();
                fId.val('');
                fName.val('');
                fFirstName.val('');
                fLastName.val('');

                $(_trEdit).find('td:eq(0)').text(_id);
                $(_trEdit).find('td:eq(1)').text(_name);
                $(_trEdit).find('td:eq(2)').text(_firstname);
                $(_trEdit).find('td:eq(3)').text(_lastname);
                alert("Изменение сохранены");
                _trEdit = null;

            }

        });
        $(document).ready(function () {
            var $submit = $('input[type="submit"]');
            $submit.prop('disabled', true);
            $('input[type="text"]').on('input change', function () { //'input change keyup paste'
                $submit.prop('disabled', !$(this).val().length);
            });
        })
    })
</script>
<script>

    function loadData() {
        $("#LoadingStatus").html("....");
        $.get("/getList", null, DataBind);
    }


    function delete1(id) {
        console.log('delete'+id);

        $.ajax({
            url: '/delete/'+id,
            type: 'DELETE',
            success: function(data) {
                loadData();
            }
        });
    }

    function DataBind(StudentList) {
        var SetData = $("#SetStudentList");

        $("#SetStudentList").html("");

        for (var i = 0; i < StudentList.length; i++) {
            var Data = "<tr class='row_" + "'>" +
                    "<td>" + StudentList[i].id + "</td>" +
                    "<td>" + StudentList[i].name + "</td>" +
                    "<td>" + StudentList[i].firstname + "</td>" +
                    "<td>" + StudentList[i].lastname + "</td>" +
                    "<td>" + "<button type='button' class='btn btn-warning btn-edit' data-toggle='modal' data-target='#myModal1'>Изменить</button>" + "</td>" +
                    "<td>" + "<button type='button' onclick='delete1("+StudentList[i].id+")'  class='btn btn-danger btn-delete'>Удалить</button>" + "</td>" +
                    "</tr>";
            SetData.append(Data);
            $("#LoadingStatus").html(" ");
        }
    }

    loadData();
</script>
<script>
    $(document).ready(
            function () {
                $("#btn-add").click(function (event) {
                    event.preventDefault();

                    ajaxGet();
                });
                function ajaxGet() {
                    var name = $('#name').val();
                    var firstname = $('#firstname').val();
                    var lastname = $('#lastname').val();


                    var Message = {
                        name: name,
                        firstname: firstname,
                        lastname: lastname
                    };
                    $.ajax({
                        type: "POST",
                        contentType: "application/json",
                        url: "/save",
                        data: JSON.stringify(Message),
                        dataType: 'json',
                        success: function (result) {
                            if (result.status == "success") {
                                $("#LoadingStatus").html(
                                        "" + result.data.id
                                        + "Get Successfully! <br>"
                                        + "---> Congrats !!" + "</p>");
                            } else {
                                $("#LoadingStatus").html(" ");
                            }
                            console.log(result);
                        }
                    });

                    name.val('');
                    firstname.val('');
                    lastname.val('');

                }
            })
</script>
<script>



</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>