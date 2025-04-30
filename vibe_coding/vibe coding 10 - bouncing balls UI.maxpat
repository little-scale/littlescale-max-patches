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
		"rect" : [ 34.0, 99.0, 1402.0, 779.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 12,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1169.0, 1006.0, 241.0, 167.0 ],
					"text" : "Hello chat, can you do the following in v8ui in Max 9 using the mgraphics library? There should be a bouncing ball physics engine. Whenever I click with the mouse, a new bouncing ball is created. This bouncing ball will output a value the corresponds to the height it was originally dropped from. Everytime it collides with the ground, this same value will be output from the object. This will be a musical pitch. The ball can also collide with other balls or the walls. When the ball comes to rest it is removed. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 435.0, 630.0, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 434.0, 601.0, 108.0, 22.0 ],
					"text" : "makenote 100 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.0, 571.0, 103.0, 22.0 ],
					"text" : "scale 0 400 48 72"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 434.0, 106.0, 24.0, 24.0 ],
					"svg" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 434.0, 136.0, 56.0, 22.0 ],
					"text" : "metro 25"
				}

			}
, 			{
				"box" : 				{
					"filename" : "none",
					"id" : "obj-1",
					"maxclass" : "v8ui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 435.0, 165.0, 501.0, 398.0 ],
					"textfile" : 					{
						"text" : "// Bouncing Balls Musical Pitch Generator\nmgraphics.init();\nmgraphics.relative_coords = 0;\nmgraphics.autofill = 0;\n\n// Ball list\nvar balls = [];\nvar gravity = 0.5;\nvar friction = 0.99;\nvar restitution = 0.8; // how bouncy the balls are\nvar ground = 400; // ground height\nvar ball_radius = 10;\nvar velocity_threshold = 1; // below this, ball is considered at rest\n\n// Size of the world\nvar world_w = 600;\nvar world_h = 400;\n\n// Setup\nmgraphics.redraw();\n\nfunction paint() {\n    with (mgraphics) {\n        set_source_rgb(0, 0, 0);\n        rectangle(0, 0, world_w, world_h);\n        fill();\n\n        set_source_rgb(1, 1, 1);\n        for (var i = 0; i < balls.length; i++) {\n            var b = balls[i];\n            ellipse(b.x - ball_radius, b.y - ball_radius, ball_radius*2, ball_radius*2);\n            fill();\n        }\n    }\n}\n\nfunction onclick(x, y, but, cmd, shift, capslock, option, ctrl) {\n    var ball = {\n        x: x,\n        y: y,\n        vx: (Math.random() * 4) - 2,\n        vy: 0,\n        pitch_value: world_h - y // height relative to ground\n    };\n    balls.push(ball);\n}\n\nfunction bang() {\n    // Physics update\n    for (var i = balls.length - 1; i >= 0; i--) {\n        var b = balls[i];\n\n        // Gravity\n        b.vy += gravity;\n\n        // Move\n        b.x += b.vx;\n        b.y += b.vy;\n\n        // Wall collisions\n        if (b.x <= ball_radius) {\n            b.x = ball_radius;\n            b.vx *= -restitution;\n        }\n        if (b.x >= world_w - ball_radius) {\n            b.x = world_w - ball_radius;\n            b.vx *= -restitution;\n        }\n\n        // Ground collision\n        if (b.y >= ground - ball_radius) {\n            b.y = ground - ball_radius;\n            b.vy *= -restitution;\n\n            // Output pitch when hitting ground\n            outlet(0, b.pitch_value);\n        }\n\n        // Ceiling collision\n        if (b.y <= ball_radius) {\n            b.y = ball_radius;\n            b.vy *= -restitution;\n        }\n\n        // Friction\n        b.vx *= friction;\n        b.vy *= friction;\n\n        // Rest check\n        if (Math.abs(b.vx) < velocity_threshold && Math.abs(b.vy) < velocity_threshold && b.y >= ground - ball_radius - 1) {\n            balls.splice(i, 1);\n        }\n    }\n\n    // Ball-to-ball collisions\n    for (var i = 0; i < balls.length; i++) {\n        for (var j = i + 1; j < balls.length; j++) {\n            var bi = balls[i];\n            var bj = balls[j];\n            var dx = bj.x - bi.x;\n            var dy = bj.y - bi.y;\n            var dist = Math.sqrt(dx*dx + dy*dy);\n            if (dist < ball_radius*2) {\n                // Simple elastic collision\n                var angle = Math.atan2(dy, dx);\n                var targetX = bi.x + Math.cos(angle) * ball_radius * 2;\n                var targetY = bi.y + Math.sin(angle) * ball_radius * 2;\n                var ax = (targetX - bj.x) * 0.5;\n                var ay = (targetY - bj.y) * 0.5;\n\n                bi.vx -= ax;\n                bi.vy -= ay;\n                bj.vx += ax;\n                bj.vy += ay;\n            }\n        }\n    }\n\n    mgraphics.redraw();\n}\n",
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
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"midpoints" : [ 532.5, 626.5, 459.5, 626.5 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"originid" : "pat-81",
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
