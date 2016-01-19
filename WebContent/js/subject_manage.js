$(document).ready(
		function() {
			$("#periodid").slider({ min: 1, max: 4, value: [1, 4], focus: true });


			if ($("#addTb-tbody > tr").size() < 2) {
				$("#addTb-tbody > tr").clone(true).insertAfter(
						$("#addTb-tbody > tr"));
			}// if

			firstID();

			// +ボタン押されたら行の追加
			$(document).on(
					"click",
					".addList",
					function() {

						// parent().parent() => td > tr
						($("#addTb-tbody > tr").eq(0)).clone(true).insertAfter(
								$(this).parent().parent());
						$(".removeList").css("opacity", "1");
						firstID();

					});

			// -ボタン押されたら行の削除
			$(document).on("click", ".removeList", function() {

				if ($("#addTb-tbody > tr").size() > 2) {
					$(this).parent().parent().empty();
					firstID();
				} else {

					$(".removeList").css("opacity", "0.1");

				}

			});

		});

// 動的にIDの連番を格納
function firstID() {
	var cnt = 1;
	$(".subjectName").each(function() {

		$(this).attr("name", "subjectName" + cnt);

		cnt++;
	});

	var cnt = 1;
	$(".bringThings").each(function() {

		$(this).attr("name", "bringThings" + cnt);

		cnt++;
	});

	var cnt = 1;
	$(".grade").each(function() {

		$(this).attr("name", "grade_name" + cnt);
		$(this).attr("id", "grade_id" + cnt);
		$(this).attr("onchange", "selectChange(" + cnt + ")");

		cnt++;
	});
	var cnt = 1;

	$(".cource").each(function() {

		$(this).attr("name", "cource_name" + cnt);
		$(this).attr("id", "cource_id" + cnt);
		cnt++;
	});

	var cnt = 1;

	$(".addList").each(function() {

		$(this).attr("id", "addBtn" + cnt);
		cnt++;
	});

}

