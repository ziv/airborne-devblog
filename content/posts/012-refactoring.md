+++
date = '2026-03-31T00:00:00+00:00'
draft = true
title = "Refucktoring"
cover = "cover/i11.png"
+++

I hit a dead end.

I defined various entities and started thinking about how I was going to manage them all. Do I need them all to implement a fixed API so I can handle every entity from a single loop? Slowly but surely, I started to realize the magnitude of the problem I had gotten myself into.

I opened a new chat with Gemini and brought up the issue. "What's the problem?" it wondered, pointing out that the industry has been working with ECS for years. "Explain ECS to me," I asked, and received more information than I needed, but with one key takeaway: I have to migrate to ECS.

> Entity component system (ECS) is a software architectural pattern. An ECS consists of entities composed of data components, along with systems that operate on those components. It is most associated with video game development for the representation of game world objects.
> (Wikipedia)

Among Gemini's many stories, it mentioned the `entt` library, which is designed for exactly this, and that even (so it claimed) the developers of Minecraft use it. I don't argue with those greater than me, so I set off on my refactoring journey. Among the many trials and tribulations, I experienced segfaults for the first time since I started developing the game, weird errors I hadn't encountered before, and a bunch of other troubles that fell on me.

I wrote and deleted code more than once just because I couldn't identify the source of the problem. But I had invested too much time into this, so I decided not to give up and try to figure out what was really going on. I started flooding Gemini with my error messages, and step by step, I learned better through these errors than I would have through simple explanations. I learned about memory management, copying, how C++ behaves and why, and most importantly, I learned to appreciate the creators of the two libraries I'm currently using: `entt` and `nlohmann`.

The refactoring was a success; my mental health, less so.