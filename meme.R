library(magick)

crybaby <- image_read("https://png.pngtree.com/png-clipart/20190618/original/pngtree-boy-cry-hand-painted-illustration-png-image_3919544.jpg") %>%
  image_scale(200)%>%

memes <- image_blank(width=200,
                  height=200,
                  color="#000000") %>%
  image_annotate(text="I'm going out with the girls tonight,
                 my boyfriend:",
                 color= "#ffffff",
                 size= 50,
                 font= "Impact",
                 gravity= "center")%>%

crybaby.meme <- c( memes,crybaby)%>%
  image_append(stack=TRUE)

image_write(crybaby.meme, "my_meme.png")


