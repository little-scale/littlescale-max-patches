{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 99.0, 1367.0, 778.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-35",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 885.0, 180.0, 405.0, 114.0 ],
					"text" : "Hey chat, can you build the following in v8ui in Max 9 using mgraphics? Create a particle system that mimics brownian motion that is contained within a hexagon shape. the user should be able to set the size of particle, number of particles, brownian motion parameters. Each particle should have a number associated with it. As two particles collide, the object should output the numbers associated with the particles. When particles bounce off the walls they should also output a number. Can you make the colours of the particles change whenever they collide. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 780.0, 105.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 135.0, 84.0, 22.0 ],
					"text" : "set_motion $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 660.0, 105.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 660.0, 135.0, 93.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "set_particles $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 105.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 135.0, 69.0, 22.0 ],
					"text" : "set_size $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 495.0, 615.0, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 495.0, 585.0, 101.0, 22.0 ],
					"text" : "makenote 100 20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 525.0, 29.5, 22.0 ],
					"text" : "$3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 525.0, 29.5, 22.0 ],
					"text" : "$2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 495.0, 555.0, 32.0, 22.0 ],
					"text" : "+ 48"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 105.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 495.0, 135.0, 56.0, 22.0 ],
					"text" : "metro 20"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "none",
					"id" : "obj-3",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 495.0, 180.0, 358.0, 338.0 ],
					"textfile" : 					{
						"text" : "mgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\nvar num_particles = 20;\nvar particle_size = 5;\nvar motion_strength = 1;\nvar particles = [];\nvar hex_radius = 100;\nvar width = 300;\nvar height = 300;\nvar tick_interval = 30;\nvar hexagon = [];\n\nfunction bang() {\n    if (hexagon.length !== 6) generateHexagon();\n    update();\n    mgraphics.redraw();\n}\n\nfunction paint() {\n    drawHexagon();\n    drawParticles();\n}\n\nfunction drawHexagon() {\n    if (hexagon.length !== 6) return;\n\n    mgraphics.set_line_width(1);\n    mgraphics.set_source_rgba(0.5, 0.5, 0.5, 1);\n    mgraphics.new_path();\n    for (var i = 0; i < 6; i++) {\n        var pt = hexagon[i];\n        if (i === 0) mgraphics.move_to(pt[0], pt[1]);\n        else mgraphics.line_to(pt[0], pt[1]);\n    }\n    mgraphics.close_path();\n    mgraphics.stroke();\n}\n\nfunction drawParticles() {\n    for (var i = 0; i < particles.length; i++) {\n        var p = particles[i];\n\n        if (p.color_timer > 0) {\n            mgraphics.set_source_rgba(1, 0, 0, 1); // flash red\n            p.color_timer -= 1;\n        } else {\n            mgraphics.set_source_rgba(p.r, p.g, p.b, 1); // blue base\n        }\n\n        mgraphics.arc(p.x, p.y, particle_size, 0, Math.PI * 2);\n        mgraphics.fill();\n    }\n}\n\nfunction generateHexagon() {\n    hexagon = [];\n    hex_radius = Math.min(width, height) * 0.45;\n    for (var i = 0; i < 6; i++) {\n        var angle = Math.PI / 3 * i;\n        var x = width / 2 + hex_radius * Math.cos(angle);\n        var y = height / 2 + hex_radius * Math.sin(angle);\n        hexagon.push([x, y]);\n    }\n}\n\nfunction initParticles() {\n    particles = [];\n    for (var i = 0; i < num_particles; i++) {\n        var tries = 0;\n        var x = 0, y = 0;\n        while (true) {\n            var angle = Math.random() * 2 * Math.PI;\n            var radius = Math.random() * hex_radius * 0.8;\n            x = width / 2 + radius * Math.cos(angle);\n            y = height / 2 + radius * Math.sin(angle);\n            if (pointInPolygon(x, y, hexagon)) break;\n            if (++tries > 100) break;\n        }\n        particles.push({\n            id: i,\n            x: x,\n            y: y,\n            vx: 0,\n            vy: 0,\n            r: 0,\n            g: Math.random() * 0.5,\n            b: 0.5 + Math.random() * 0.5,\n            color_timer: 0\n        });\n    }\n}\n\nfunction update() {\n    // Handle particle-particle collisions\n    for (var i = 0; i < particles.length; i++) {\n        for (var j = i + 1; j < particles.length; j++) {\n            var a = particles[i];\n            var b = particles[j];\n            var dx = b.x - a.x;\n            var dy = b.y - a.y;\n            var dist = Math.sqrt(dx * dx + dy * dy);\n            var minDist = particle_size * 2;\n            if (dist < minDist && dist > 0.0001) {\n                var overlap = (minDist - dist) / 2;\n                var nx = dx / dist;\n                var ny = dy / dist;\n                a.x -= nx * overlap;\n                a.y -= ny * overlap;\n                b.x += nx * overlap;\n                b.y += ny * overlap;\n\n                var tempVx = a.vx;\n                var tempVy = a.vy;\n                a.vx = b.vx;\n                a.vy = b.vy;\n                b.vx = tempVx;\n                b.vy = tempVy;\n\n                flashRed(a);\n                flashRed(b);\n                outlet(0, \"collision\", a.id, b.id);\n            }\n        }\n    }\n\n    // Move and bounce off walls\n    for (var i = 0; i < particles.length; i++) {\n        var p = particles[i];\n        p.vx += (Math.random() - 0.5) * motion_strength;\n        p.vy += (Math.random() - 0.5) * motion_strength;\n\n        p.x += p.vx;\n        p.y += p.vy;\n\n        p.vx *= 0.95;\n        p.vy *= 0.95;\n\n        if (!pointInPolygon(p.x, p.y, hexagon)) {\n            p.vx = -p.vx;\n            p.vy = -p.vy;\n            p.x += p.vx * 2;\n            p.y += p.vy * 2;\n\n            flashRed(p);\n            outlet(0, \"wallcollision\", p.id);\n        }\n    }\n}\n\nfunction pointInPolygon(x, y, poly) {\n    var inside = false;\n    for (var i = 0, j = poly.length - 1; i < poly.length; j = i++) {\n        var xi = poly[i][0], yi = poly[i][1];\n        var xj = poly[j][0], yj = poly[j][1];\n        var intersect = ((yi > y) != (yj > y)) &&\n                        (x < (xj - xi) * (y - yi) / (yj - yi + 0.000001) + xi);\n        if (intersect) inside = !inside;\n    }\n    return inside;\n}\n\nfunction flashRed(p) {\n    p.color_timer = 10; // stay red for 10 frames\n}\n\n// ATTRIBUTES\nfunction set_particles(n) {\n    num_particles = Math.max(1, Math.floor(n));\n    initParticles();\n    mgraphics.redraw();\n}\n\nfunction set_size(s) {\n    particle_size = Math.max(1, s);\n    mgraphics.redraw();\n}\n\nfunction set_motion(m) {\n    motion_strength = Math.max(0, m);\n}\n\n// RESIZE + INIT\nfunction onresize(w, h) {\n    width = w || 300;\n    height = h || 300;\n    generateHexagon();\n    initParticles();\n    mgraphics.redraw();\n}\n\nfunction loadbang() {\n    var t = new Task(initAll, this);\n    t.schedule(100);\n}\n\nfunction initAll() {\n    width = this.box.rect[2] - this.box.rect[0] || 300;\n    height = this.box.rect[3] - this.box.rect[1] || 300;\n    generateHexagon();\n    initParticles();\n    mgraphics.redraw();\n    start_timer();\n}\n\n// TIMER\nvar interval_id = null;\nfunction start_timer() {\n    if (interval_id) clearInterval(interval_id);\n    interval_id = setInterval(bang, tick_interval);\n}\n",
						"filename" : "none",
						"flags" : 0,
						"embed" : 1,
						"autowatch" : 1
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 504.5, 551.0, 504.5, 551.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 549.5, 551.0, 504.5, 551.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"midpoints" : [ 586.5, 611.0, 519.5, 611.0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 504.5, 611.0, 504.5, 611.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 579.5, 168.5, 504.5, 168.5 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 669.5, 168.5, 504.5, 168.5 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"order" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 789.5, 168.5, 504.5, 168.5 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 504.5, 168.5, 504.5, 168.5 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"originid" : "pat-75",
		"dependency_cache" : [ 			{
				"name" : "v8ui_default.js",
				"bootpath" : "C74:/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
