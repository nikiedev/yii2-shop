(function ($) {
    var userName, userEmail, productId, reviewText;
    var btnAddReview = $('#add-review');
    var appComment = $('#comments-list');

    function addComment()
    {
        userName = $('#review-user_name').val();
        userEmail = $('#review-user_email').val();
        productId = $('#review-product_id').val();
        reviewText = $('#review-review_text').val();

        $.ajax({
            url: '/review/create',
            method: 'post',
            data: {
                'userName': userName,
                'reviewText': reviewText,
                'userEmail': userEmail,
                'productId': productId
            },
            success: function (data) {
                if (data) {
                    appComment.append('<li><p>Ваш отзыв добавлен!</p></li>');
                }
            }
        });
    }

    btnAddReview.on('click', addComment);

    /* tabs */
    $(".tab-slider--body").hide();
    $(".tab-slider--body:first").show();


    $(".tab-slider--nav li").click(function() {
        $(".tab-slider--body").hide();
        var activeTab = $(this).attr("rel");
        $("#"+activeTab).fadeIn();
        if($(this).attr("rel") == "tab2"){
            $('.tab-slider--tabs').addClass('slide');
        }else{
            $('.tab-slider--tabs').removeClass('slide');
        }
        $(".tab-slider--nav li").removeClass("active");
        $(this).addClass("active");
    });


})(jQuery);