// ==UserScript==
// @name         florr.io widest visibility area + unlock all petals and mobs + crosshair cursor
// @version      1
// @description  unlock all the petals and the mobs + have the widest area of view possible to see your opponents from further + get a crosshair cursor for a better aim
// @author       jkill
// @match        https://florr.io/
// @require      https://raw.githubusercontent.com/jkillpro/e/master/e
// @namespace    https://greasyfork.org/users/574692
// @run-at       document-start
// ==/UserScript==
var ready = setInterval(()=>{
    if (document.getElementById('canvas') != undefined) {
        clearInterval(ready)
        window.onmousemove = function() { if ( document.getElementById("canvas").style.cursor == "default") { document.getElementById("canvas").style.cursor = "crosshair"; } };
        setInterval(()=>{
            if (!!document.getElementById("canvas") && document.getElementById("canvas").width != Math.floor(1440/810*document.getElementById("canvas").height)) {
                document.getElementById("canvas").width = 1440/810*document.getElementById("canvas").height
            }
        },0)
    }
})
