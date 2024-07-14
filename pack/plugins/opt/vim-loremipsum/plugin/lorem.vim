function! InsertLorem(...)
    let lorem_text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at massa et est vulputate sollicitudin vitae at libero. Pellentesque iaculis neque diam, vulputate tempor est ullamcorper quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed purus risus. Nunc vitae augue sit amet magna semper efficitur quis at erat. Suspendisse commodo sem at neque feugiat auctor. Praesent pretium tellus odio. Integer a facilisis nibh. Duis hendrerit nibh quis turpis vulputate aliquam id quis nibh. Suspendisse ut quam quis arcu sodales luctus. Ut id sagittis ex. Praesent facilisis velit blandit dictum luctus. Cras in erat malesuada nisi dignissim tempus. Ut in placerat tortor."

    if a:0 == 0
        normal! iLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent at massa et est vulputate sollicitudin vitae at libero. Pellentesque iaculis neque diam, vulputate tempor est ullamcorper quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed purus risus. Nunc vitae augue sit amet magna semper efficitur quis at erat. Suspendisse commodo sem at neque feugiat auctor. Praesent pretium tellus odio. Integer a facilisis nibh. Duis hendrerit nibh quis turpis vulputate aliquam id quis nibh. Suspendisse ut quam quis arcu sodales luctus. Ut id sagittis ex. Praesent facilisis velit blandit dictum luctus. Cras in erat malesuada nisi dignissim tempus. Ut in placerat tortor.
    else
        let word_count = a:1
        let lorem_words = split(lorem_text)
        let to_insert = join(lorem_words[:word_count], ' ')
        execute 'normal! i' . to_insert
    endif
endfunction

command! -nargs=? Lorem call InsertLorem(<f-args>)

