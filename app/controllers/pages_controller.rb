class PagesController < ApplicationController
  def home
  end

  def install
  end

  def options
    @data = [
      {
        "group" => "General",
        "items" => [
          {
            "name" => "mode",
            "description" => "Type of transition between slides",
            "default" => "'horizontal'",
            "options" => "'horizontal', 'vertical', 'fade'"
          },

          {
            "name" => "speed",
            "description" => "Slide transition duration (in ms)",
            "default" => "500",
            "options" => "integer"
          },

          {
            "name" => "slideMargin",
            "description" => "Margin between each slide",
            "default" => "0",
            "options" => "integer"
          },

          {
            "name" => "startSlide",
            "description" => "Starting slide index (zero-based)",
            "default" => "0",
            "options" => "integer"
          },

          {
            "name" => "randomStart",
            "description" => "Start slider on a random slide",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "slideSelector",
            "description" => "Element to use as slides (ex. 'div.slide').<br />Note: by default, bxSlider will use all immediate children of the slider element",
            "default" => "''",
            "options" => "jQuery selector"
          },

          {
            "name" => "infiniteLoop",
            "description" => "If true, clicking \"Next\" while on the last slide will transition to the first slide and vice-versa",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "hideControlOnEnd",
            "description" => "If true, \"Prev\" and \"Next\" controls will receive a class disabled when slide is the first or the last<br/>Note: Only used when infiniteLoop: false",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "easing",
            "description" => "The type of \"easing\" to use during transitions. If using CSS transitions, include a value for the transition-timing-function property. If not using CSS transitions, you may include plugins/jquery.easing.1.3.js for many options.<br />See <a href=\"http://gsgd.co.uk/sandbox/jquery/easing/\" target=\"_blank\">http://gsgd.co.uk/sandbox/jquery/easing/</a> for more info.",
            "default" => "null",
            "options" => "if using CSS: 'linear', 'ease', 'ease-in', 'ease-out', 'ease-in-out', 'cubic-bezier(n,n,n,n)'. If not using CSS: 'swing', 'linear' (see the above file for more options)"
          },

          {
            "name" => "captions",
            "description" => "Include image captions. Captions are derived from the image's title attribute",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "ticker",
            "description" => "Use slider in ticker mode (similar to a news ticker)",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "tickerHover",
            "description" => "Ticker will pause when mouse hovers over slider. Note: this functionality does NOT work if using CSS transitions!",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "adaptiveHeight",
            "description" => "Dynamically adjust slider height based on each slide's height",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "adaptiveHeightSpeed",
            "description" => "Slide height transition duration (in ms). Note: only used if adaptiveHeight: true",
            "default" => "500",
            "options" => "integer"
          },

          {
            "name" => "video",
            "description" => "If any slides contain video, set this to true. Also, include plugins/jquery.fitvids.js<br />See <a href=\"http://fitvidsjs.com/\" target=\"_blank\">http://fitvidsjs.com/</a> for more info",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "responsive",
            "description" => "Enable or disable auto resize of the slider. Useful if you need to use fixed width sliders.",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "useCSS",
            "description" => "If true, CSS transitions will be used for horizontal and vertical slide animations (this uses native hardware acceleration). If false, jQuery animate() will be used.",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "preloadImages",
            "description" => "If 'all', preloads all images before starting the slider. If 'visible', preloads only images in the initially visible slides before starting the slider (tip: use 'visible' if all slides are identical dimensions)",
            "default" => "'visible'",
            "options" => "'all', 'visible'"
          },

          {
            "name" => "touchEnabled",
            "description" => "If true, slider will allow touch swipe transitions",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "swipeThreshold",
            "description" => "Amount of pixels a touch swipe needs to exceed in order to execute a slide transition. Note: only used if touchEnabled: true",
            "default" => "50",
            "options" => "integer"
          },

          {
            "name" => "oneToOneTouch",
            "description" => "If true, non-fade slides follow the finger as it swipes",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "preventDefaultSwipeX",
            "description" => "If true, touch screen will not move along the x-axis as the finger swipes",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "preventDefaultSwipeY",
            "description" => "If true, touch screen will not move along the y-axis as the finger swipes",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "wrapperClass",
            "description" => "Class to wrap the slider in. Change to prevent from using default bxSlider styles.",
            "default" => "'bx-wrapper'",
            "options" => "string"
          }
        ]
      },
      {
        "group" => "Pager",
        "items" => [
          {
            "name" => "pager",
            "description" => "If true, a pager will be added",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "pagerType",
            "description" => "If 'full', a pager link will be generated for each slide. If 'short', a x / y pager will be used (ex. 1 / 5)",
            "default" => "'full'",
            "options" => "'full', 'short'"
          },

          {
            "name" => "pagerShortSeparator",
            "description" => "If pagerType: 'short', pager will use this value as the separating character",
            "default" => "' / '",
            "options" => "string"
          },

          {
            "name" => "pagerSelector",
            "description" => "Element used to populate the populate the pager. By default, the pager is appended to the bx-viewport",
            "default" => "''",
            "options" => "jQuery selector"
          },

          {
            "name" => "pagerCustom",
            "description" => "Parent element to be used as the pager. Parent element must contain a <a data-slide-index=\"x\"> element for each slide. See example <a href=\"/examples/thumbnail-method-1\">here</a>. Not for use with dynamic carousels.",
            "default" => "null",
            "options" => "jQuery selector"
          },

          {
            "name" => "buildPager",
            "description" => "If supplied, function is called on every slide element, and the returned value is used as the pager item markup.<br />See <a href=\"http://bxslider.com/examples\">examples</a> for detailed implementation",
            "default" => "null",
            "options" => "function(slideIndex)"
          }
        ]
      },
      {
        "group" => "Controls",
        "items" => [
          {
            "name" => "controls",
            "description" => "If true, \"Next\" / \"Prev\" controls will be added",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "nextText",
            "description" => "Text to be used for the \"Next\" control",
            "default" => "'Next'",
            "options" => "string"
          },

          {
            "name" => "prevText",
            "description" => "Text to be used for the \"Prev\" control",
            "default" => "'Prev'",
            "options" => "string"
          },

          {
            "name" => "nextSelector",
            "description" => "Element used to populate the \"Next\" control",
            "default" => "null",
            "options" => "jQuery selector"
          },

          {
            "name" => "prevSelector",
            "description" => "Element used to populate the \"Prev\" control",
            "default" => "null",
            "options" => "jQuery selector"
          },

          {
            "name" => "autoControls",
            "description" => "If true, \"Start\" / \"Stop\" controls will be added",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "startText",
            "description" => "Text to be used for the \"Start\" control",
            "default" => "'Start'",
            "options" => "string"
          },

          {
            "name" => "stopText",
            "description" => "Text to be used for the \"Stop\" control",
            "default" => "'Stop'",
            "options" => "string"
          },

          {
            "name" => "autoControlsCombine",
            "description" => "When slideshow is playing only \"Stop\" control is displayed and vice-versa",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "autoControlsSelector",
            "description" => "Element used to populate the auto controls",
            "default" => "null",
            "options" => "jQuery selector"
          },

          {
            "name" => "keyboardEnabled",
            "description" => "Enable keyboard navigation for visible sliders",
            "default" => "false",
            "options" => "boolean"
          }
        ]
      },
      {
        "group" => "Auto",
        "items" => [
          {
            "name" => "auto",
            "description" => "Slides will automatically transition",
            "default" => "false",
            "options" => "boolean"
          },
          {
            "name" => "stopAutoOnClick",
            "description" => "Auto will stop on interaction with controls",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "pause",
            "description" => "The amount of time (in ms) between each auto transition",
            "default" => "4000",
            "options" => "integer"
          },

          {
            "name" => "autoStart",
            "description" => "Auto show starts playing on load. If false, slideshow will start when the \"Start\" control is clicked",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "autoDirection",
            "description" => "The direction of auto show slide transitions",
            "default" => "'next'",
            "options" => "'next', 'prev'"
          },

          {
            "name" => "autoHover",
            "description" => "Auto show will pause when mouse hovers over slider",
            "default" => "false",
            "options" => "boolean"
          },

          {
            "name" => "autoDelay",
            "description" => "Time (in ms) auto show should wait before starting",
            "default" => "0",
            "options" => "integer"
          }
        ]
      },
      {
        "group" => "Carousel",
        "items" => [
          {
            "name" => "minSlides",
            "description" => "The minimum number of slides to be shown. Slides will be sized down if carousel becomes smaller than the original size.",
            "default" => "1",
            "options" => "integer"
          },

          {
            "name" => "maxSlides",
            "description" => "The maximum number of slides to be shown. Slides will be sized up if carousel becomes larger than the original size.",
            "default" => "1",
            "options" => "integer"
          },

          {
            "name" => "moveSlides",
            "description" => "The number of slides to move on transition. This value must be &gt;= minSlides, and &lt;= maxSlides. If zero (default), the number of fully-visible slides will be used.",
            "default" => "0",
            "options" => "integer"
          },

          {
            "name" => "slideWidth",
            "description" => "The width of each slide. This setting is required for all horizontal carousels!",
            "default" => "0",
            "options" => "integer"
          },

          {
            "name" => "shrinkItems",
            "description" => "The Carousel will only show whole items and shrink the images to fit the viewport based on maxSlides / minSlides.",
            "default" => "false",
            "options" => "boolean"
          }
        ]
      },
      {
        "group" => "Keyboard",
        "items" => [
          {
            "name" => "keyboardEnabled",
            "description" => "Allows for keyboard control of visible slider. Keypress ignored if slider not visible.",
            "default" => "false",
            "options" => "boolean"
          }
        ]
      },
      {
        "group" => "Accessibility",
        "items" => [
          {
            "name" => "ariaLive",
            "description" => "Adds Aria Live attribute to slider.",
            "default" => "true",
            "options" => "boolean"
          },

          {
            "name" => "ariaHidden",
            "description" => "Adds Aria Hidden attribute to any nonvisible slides.",
            "default" => "true",
            "options" => "boolean"
          }
        ]
      },
      {
        "group" => "Callbacks",
        "items" => [
          {
            "name" => "onSliderLoad",
            "description" => "Executes immediately after the slider is fully loaded",
            "arguments" => [
              {
                "name" => "currentIndex",
                "description" => "element index of the current slide"
              }
            ]
          },

          {
            "name" => "onSliderResize",
            "description" => "Executes immediately after the slider is resized",
            "arguments" => [
              {
                "name" => "currentIndex",
                "description" => "element index of the current slide"
              }
            ]
          },

          {
            "name" => "onSlideBefore",
            "description" => "Executes immediately before each slide transition.",
            "arguments" => [
              {
                "name" => "$slideElement",
                "description" => "jQuery element of the destination element"
              },
              {
                "name" => "oldIndex",
                "description" => "element index of the previous slide (before the transition)"
              },
              {
                "name" => "newIndex",
                "description" => "element index of the destination slide (after the transition)"
              }
            ]
          },

          {
            "name" => "onSlideAfter",
            "description" => "Executes immediately after each slide transition. Function argument is the current slide element (when transition completes).",
            "arguments" => [
              {
                "name" => "$slideElement",
                "description" => "jQuery element of the destination element"
              },
              {
                "name" => "oldIndex",
                "description" => "element index of the previous slide (before the transition)"
              },
              {
                "name" => "newIndex",
                "description" => "element index of the destination slide (after the transition)"
              }
            ]
          },

          {
            "name" => "onSlideNext",
            "description" => "Executes immediately before each \"Next\" slide transition. Function argument is the target (next) slide element.",
            "arguments" => [
              {
                "name" => "$slideElement",
                "description" => "jQuery element of the destination element"
              },
              {
                "name" => "oldIndex",
                "description" => "element index of the previous slide (before the transition)"
              },
              {
                "name" => "newIndex",
                "description" => "element index of the destination slide (after the transition)"
              }
            ]
          },

          {
            "name" => "onSlidePrev",
            "description" => "Executes immediately before each \"Prev\" slide transition. Function argument is the target (prev) slide element.",
            "arguments" => [
              {
                "name" => "$slideElement",
                "description" => "jQuery element of the destination element"
              },
              {
                "name" => "oldIndex",
                "description" => "element index of the previous slide (before the transition)"
              },
              {
                "name" => "newIndex",
                "description" => "element index of the destination slide (after the transition)"
              }
            ]
          }
        ]
      },
      {
        "group" => "Public Methods",
        "items" => [
          {
            "name" => "goToSlide",
            "description" => "Performs a slide transition to the supplied slide index (zero-based)"
          },

          {
            "name" => "goToNextSlide",
            "description" => "Performs a \"Next\" slide transition"
          },

          {
            "name" => "goToPrevSlide",
            "description" => "Performs a \"Prev\" slide transition"
          },

          {
            "name" => "startAuto",
            "description" => "Starts the auto show. Provide an argument false to prevent the auto controls from being updated."
          },

          {
            "name" => "stopAuto",
            "description" => "Stops the auto show. Provide an argument false to prevent the auto controls from being updated."
          },

          {
            "name" => "getCurrentSlide",
            "description" => "Returns the current active slide"
          },

          {
            "name" => "getSlideCount",
            "description" => "Returns the total number of slides in the slider"
          },

          {
            "name" => "redrawSlider",
            "description" => "Redraw the slider. Useful when needing to redraw a hidden slider after it is unhidden."
          },

          {
            "name" => "reloadSlider",
            "description" => "Reload the slider. Useful when adding slides on the fly. Accepts an optional settings object."
          },

          {
            "name" => "destroySlider",
            "description" => "Destroy the slider. This reverts all slider elements back to their original state (before calling the slider)."
          }
        ]
      }
    ]
  end
end
