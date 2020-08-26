function allergenToggle() {
  $(document).ready(function(){
    $(".category-choice").click(function(){
      $(this).toggleClass("active");
    });
  });
}

export {allergenToggle} from 'allergen_choices'