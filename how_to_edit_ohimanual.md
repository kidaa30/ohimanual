# How to edit `ohimanual`

You can edit and view this Markdown (`.md`) file in RStudio or in [Atom](https://atom.io/). With Atom, you can render as you work.
Open in Atom, and (on a Mac) type shift-control-M to view this document as it is rendered. The `ohimanual` will be rendered like this online so you will learn how to use Markdown.

## `ohimanual` structure

Right now we are keeping the 5 phases (phases 1-4 plus phase 0) in separate folders within `ohimanual`:

- 0_orientation
- 1_learn_concguide
- 2_plan
- 3_conduct_manual
- 4_communicate

And each has a `make.r` file that will combine all the files within each of the Phase folders:

- make_communicate.R
- make_conduct.R
- make_learn.R
- make_orientation.R
- make_plan.R


### Workflow

- in Atom edit individual files, save, commit, push to GitHub.
- in RStudio, run the appropriate `make.r` file to see the 'stitched' file. You will need pdflatex installed: do this at [www.tug.org/mactex]()
- In Preview: view the stitched file as a .pdf (you can also view the stitched .md in Atom)

(Note: currently `3_conduct_manual` is the only folder that will be pushed online (to [http://ohi-science.org/manual]), but when we are ready, all will.



## `ohimanual` is written in Markdown (.md)

From [Wikipedia](https://en.wikipedia.org/wiki/Markdown): 'Markdown is a lightweight markup language with plain text formatting syntax designed so that it can be converted to HTML and many other formats using a tool by the same name.'

**To learn Markdown**:

- http://rmarkdown.rstudio.com/ (Rmarkdown is based on Markdown but with more capabilities)
- https://github.com/bbest/rmarkdown-example
- copy the rendering that others have done (see rendered files and look at the raw `.md`s)

**Other tips we've learned along the way**:

- spacing
  - Markdown doesn't preserve spacing as you've probably noticed (see [Daring Fireball about this](http://daringfireball.net/projects/markdown/syntax#p))
  - a workaround: type `&nbsp;` to preserve a single space (info about this from [stackoverflow](http://stackoverflow.com/questions/6046263/how-to-indent-in-a-few-lines-in-markdown-markup))
- carriage returns
  - if you have a carriage return but it doesn't render, add **two spaces** at the end of the line
  - to force a carriage return add `<br />` [stackoverflow](http://stackoverflow.com/questions/26188124/carriage-returns-in-markdown-section-of-ipython-notebook)
- making notes that will not be rendered:  
` <!---Anything between these symbols is a comment--->`. See the raw `.md` file to see a secret message
 <!---Secret message: this is a comment--->
 - subscripts
   A subscript written like this: `B<sub>MSY</sub>` renders like this: B<sub>MSY</sub>
