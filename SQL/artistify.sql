-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 10:09 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artistify`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `fav-id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `post-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`fav-id`, `user-id`, `post-id`) VALUES
(8, 19, 40),
(9, 21, 36),
(10, 22, 35),
(11, 22, 36),
(12, 20, 41),
(13, 19, 38),
(14, 19, 36),
(15, 35, 42),
(17, 37, 45);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `not-id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `post-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`not-id`, `user1`, `user2`, `post-id`) VALUES
(18, 19, 21, 40),
(19, 19, 22, 38),
(20, 21, 22, 35),
(21, 22, 20, 41),
(22, 20, 19, 42),
(25, 37, 19, 40),
(26, 19, 0, 45);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post-id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL,
  `audio` text NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post-id`, `user-id`, `type`, `title`, `description`, `img`, `audio`, `content`) VALUES
(34, 19, 1, 'A star filled sky', 'Sometimes we find ourselves in situations where we are needed to take out our camera and just click. Something like that happened to me when i looked at the sky during my trip.', 'PIC4.jpg', '', ''),
(35, 19, 1, 'The Lake House', 'This is a view of the lake house we stayed at during our trip.', 'PIC5.jpg', '', ''),
(36, 22, 2, 'The Escaped Man', 'Keeping up with the Halloween theme here is a short horror story that might make you loose your sleep.', '', '', '“You have to puke it up,” said Cee. “You have to get down there and puke it up. I mean down past where you can feel it, you know?”\r\n\r\nShe gestured earnestly at her chest. She had this old-fashioned cotton nightgown on, lace collar brilliant under the bathroom lights. Above the collar, her skin looked gray. Cee had bones like a bird. She was so beautiful. She was completely beautiful and fucked. I mean everybody at camp was sort of a mess, we were even supposed to be that way, at a difficult stage, but Cee took it to another level. Herding us into the bathroom at night and asking us to puke. “It’s right here,” she said, tapping the nightgown over her hollow chest. “Where you’ve got less nerves in your esophagus. It’s like wired into the side, into the muscle. You have to puke really hard to get it.”\r\n\r\n“Did you ever get it out?” asked Max. She was sitting on one of the sinks. She’d believe anything.\r\n\r\nCee nodded, solemn as a counselor. “Two years ago. They caught me and gave me a new one. But it was beautiful while it was gone. I’m telling you it was the best.”\r\n\r\n“Like how?” I said.\r\n\r\nCee stretched out her arms. “Like bliss. Like everything. Everything all at once. You’re raw, just a big raw nerve.”\r\n\r\n“That doesn’t sound so great,” said Elle.\r\n\r\n“I know,” said Cee, not annoyed but really agreeing, turning things around. That was one of her talents.\r\n\r\n“It sounds stupid,” she nodded, “but that’s because it’s something we can’t imagine. We don’t have the tools. Our bodies don’t know how to calculate what we’re missing. You can’t know till you get there. And at the same time, it’s where you came from. It’s where you started.”\r\n\r\nShe raised her toothbrush. “So. Who’s with me?”\r\n\r\nDefinitely not me. God, Cee. You were such an idiot.\r\n\r\nApparently, a girl named Puss had told her about the bug. And Cee, being Cee, was totally open to learning new things from a person who called herself Puss. Puss had puked out her own bug and was living on the streets. I guess she’d run away from camp, I don’t really know. She was six feet tall, Cee said, with long red hair. The hair was dyed, which was weird, because if you’re living on the streets, do you care about stuff like that? This kind of thing can keep me awake at night. I lie in bed, or rather I sit in the living room because Pete hates me tossing and turning, and I leave the room dark and open all the curtains, and I watch the lights of the city and think about this girl Puss getting red hair dye at the grocery store and doing her hair in the bathroom at the train station. Did she put newspapers down? And what if somebody came in and saw her?\r\n\r\nAnyway, eventually Cee met Puss in the park, and Puss was clearly down-and-out and a hooker, but she looked cool and friendly, and Cee sat down beside her on the swings.\r\n“You have to puke it up.”\r\n\r\n\r\nWe’d only been at camp for about six weeks. It seemed like a long time, long enough to know everybody. Everything felt stretched out at camp, the days and the nights, and yet in the end it was over so fast, as soon as you could blink. Camp was on its own calendar—a special time of life. That was Jodi’s phrase. She was our favorite counselor. She was greasy and enthusiastic, with a skinny little ponytail, only a year or two older than the seniors. Camp is so special! The thing with Jodi was, she believed every word she said. It made it really hard to make fun of her. That night, the night in the bathroom, she was asleep down the hall underneath her Mother Figure, which was a little stuffed dog with Florida on its chest.\r\n\r\n“Come on!” said Cee. And she stuck her toothbrush down her throat, just like that. I think Max screamed. Cee didn’t start puking right away. She had to give herself a few really good shoves with that toothbrush, while people said “Oh my God” and backed away and clutched one another and stared. Somebody said “Are you nuts?” Somebody else said something else, I might have said something, I don’t know, everything was so white and bright in that moment, mirrors and fluorescent lights and Cee in that goddamn Victorian nightgown jabbing away with her toothbrush and sort of gagging. Every time I looked up I could see all of us in the mirror. And then it came. A splatter of puke all over the sink. Cee leaned over and braced herself. Blam. Elle said, “Oh my God, that is disgusting.” Cee gasped. She was just getting started.\r\n\r\nElle was next. All of a sudden she spun around with her hands over her mouth and let go in the sink right next to Cee. Splat. I started laughing, but I already felt sort of dizzy and sick myself, and also scared, because I didn’t want to throw up. Cee looked up from her own sink and nodded at Elle, encouraging her. She looked completely bizarre, her wide cheekbones, her big crown of natural hair, sort of a retro supermodel with a glistening mouth, her eyes full of excitement. I think she even said “Good job, Elle!”\r\n\r\nThen she went to it with the toothbrush again. “We have to stop her!” said Katie, taking charge. “Max, go get Jodi!” But Max didn’t make it. She jumped down from the third sink, but when she got halfway to the door she turned around and ran back to the sink and puked. Meanwhile Katie was dragging Cee away from the sink and trying to get the toothbrush, but also not wanting to touch it, and she kept going “Ew ew ew” and “Help me, you guys,” and it was all so hilarious I sank down on the floor, absolutely crying with laughter. Five or six other girls, too. We just sort of looked at each other and screamed. It was mayhem. Katie dragged Cee into one of the stalls, I don’t know why. Then Katie started groaning and let go of Cee and staggered into the stall beside her, and sploosh, there she went.\r\n\r\nBugs.\r\n\r\nIt’s such a camp rumor. Camp is full of stories like that. People say the ice cream makes you sterile, the bathrooms are full of hidden cameras, there’s fanged, flesh-eating kids in the lake, if you break into the office you can call your parents. Lots of kids break into the office. It’s the most common camp offense. I never tried it, because I’m not stupid—of course you can’t call your parents. How would you even get their number? And bugs—the idea of a bug planted under your skin, to track you or feed you drugs—that’s another dumb story.\r\n\r\nExcept it’s not, because I saw one.\r\n\r\nThe smell in the bathroom was terrible now—an animal smell, hot; it thrashed around and it had fur.\r\n\r\nI knew I was going to be sick. I crawled to the closest place—the stall where Cee knelt—and grabbed hold of the toilet seat. Cee moved aside for me. Would you believe she was still hanging onto her toothbrush? I think we both threw up a couple of times. Then she made this awful sound, beyond anything, her whole body taut and straining, and something flew into the toilet with a splash.\r\n\r\nI looked at her and there was blood all over her chin. I said, “Jesus, Cee.” I thought she was dying. She sat there coughing and shaking, her eyes full of tears and triumph. She was on top of the world. “Look!” she breathed. And I looked, and there in the bowl, half-hidden by puke and blood, lay an object made of metal.\r\n\r\nIt actually looked like a bug. Sharp blood-smeared legs.\r\n\r\n“Shit!” I said. I flushed the toilet.\r\n\r\n“Now you,” said Cee, wiping her mouth on the back of her wrist.\r\n\r\n“I can’t.”\r\n\r\n“Tisha. Come on.”\r\n\r\nCee, I couldn’t, I really couldn’t. I could be sick—in fact I felt sicker than ever—but I couldn’t do it that hard. I remember the look in your eyes; you were so disappointed. You leaned and spat some blood into the toilet.\r\n\r\nI whispered: “Don’t tell anyone. Not even the other girls.”\r\n\r\n“Why not? We should all—”\r\n\r\n“No. Just trust me.”\r\n\r\nI was already scared, so scared. I couldn’t bear the idea of camp without you.\r\n\r\nWe barely slept that night. We had to take showers and clean the bathroom. Max cried the whole time, but for at least part of the night, I was laughing. Me and Katie flinging disinfectant powder everywhere. Katie was cool, always in sweatpants, didn’t give a shit about anything.\r\n\r\n“You know your friend is a headcase, right?” she said.\r\n\r\nIt was the first time anybody’d called Cee my friend. We got out the mop and lathered up the floor. Everyone slipped and swore at us, coming out of the showers. Cee went skidding by in a towel. “Whee!” she shrieked.\r\n\r\nYou cannot feel your bug. I’ve pressed so hard on my chest. I know.\r\n\r\n“I could feel it,” said Cee. “After they put it back in.” It wasn’t exactly a physical thing. She couldn’t trace the shape of the bug inside her, but she could feel it working.\r\n\r\n“Bug juice,” she said, making a sour face. She could feel bug juice seeping into her body. Every time she was going to be angry or afraid, there’d be this warmth in her chest, a feeling of calm spreading deep inside.\r\n\r\n“I only noticed it after I’d had the bug out for a couple of weeks.”\r\n\r\n“How did your parents know you needed a new one?”\r\n\r\n“I didn’t need one.”\r\n\r\n“How did they know it was gone?”\r\n\r\n“Well, I kind of had this fit. I got mad at them and started throwing food.”\r\n\r\nWe were sitting on my bed, under my Mother Figure, a lamp with a blue shade. The blue light brought out the stains on Cee’s Victorian nightgown. We were both painting our toenails Cherry Pink, balancing the polish on my Life Skills textbook, taking turns with the brush.\r\n\r\n“You should do it,” Cee said. “I feel better. I’m so much better.”\r\n\r\nI thought how in a minute we’d have to study for our Life Skills quiz. I didn’t think there was bug juice in my body. I couldn’t feel anything.\r\n\r\n“I’m so much better,” Cee said again. Her hand was shaking.\r\n\r\nOh, Cee.\r\nThe weird thing is, I started writing this after Max came to visit me, and I thought I was going to write about Max. But then I started writing in your book. Why? This book you left me, your Mother Figure. You practically threw it at me: “Take it!” It was the worst thing you could do, to take somebody else’s Parent Figure, especially the mom. Or maybe it was only us girls who cared so much about the moms. Maybe for the boys it was the dads. But anyway, taking one was the worst; you could basically expect the other kids to kill you. A kid got put in the hospital that way at a different camp—the one on the east side—but we all knew about it at our camp. They strung him up with electric wires. Whenever we told the story we ended by saying what we would have done to that kid, and it was always much worse.\r\n\r\nBut you threw this book at me, Cee, and what could I do? Jodi and Duncan were trying to grab your arms, and the ambulance was waiting for you downstairs. I caught the book clumsily, crumpling it. I looked at it later, and it was about half full of your writing. I think they’re poems.\r\n\r\ndank smells underground want to get back\r\n\r\nno pill for it\r\n\r\ni need you\r\n\r\nI don’t know, are they poems? If they are, I don’t think they’re very good. A nap could be a door an abandoned car. Does that even mean anything? Eat my teeth. I know them all by heart.\r\n\r\nI picked up this book when Max left. I wrote: “You have to puke it up.” All of a sudden I was writing about you. Surprising myself. I just kept going. Remembering camp, the weird sort of humid excitement there, the cafeteria louder than the sea. The shops—remember the shops? Lulu’s was the best. We’d save up our allowance to go there. Down in the basement you could get used stuff for cheap. You got your leather jacket there. I got these red shoes with flowers on the toes. I loved those shoes so much! I wonder where they went? I wore them to every mixer, I was wearing them when I met Pete, probably with my white dress—another Lulu’s purchase I don’t have now.\r\n\r\nIt was summer, and the mixer had an island theme. The counselors had constructed this sort of deck overlooking the lake. God, they were so proud of it. They gave us green drinks with little umbrellas in them and played lazy, sighing music, and everyone danced, and Pete saw a shooting star, and we were holding hands, and you were gone forever and I forgot you.\r\n\r\nI forgot you. Forgetting isn’t so wrong. It’s a Life Skill.\r\n\r\nI don’t remember what my parents looked like. A Parent Figure cannot be a photograph. It has to be a more neutral object. It’s supposed to stand in for someone, but not too much. When we got to camp we were all supposed to bring our Parent Figures to dinner the first night. Everyone squeezed in at the cafeteria tables, trying to find space beside their dinner trays for their Figures, those calendars and catcher’s mitts and scarves. I felt so stupid because my Mother Figure was a lamp and there was no place to plug it in. My Father Figure is a plaque that says Always be yourself.\r\n\r\nJodi came by, as the counselors were all going around “meeting the Parents,” and she said, “Wow, Tisha, that’s a good one.”\r\nI don’t even know if I picked it out.\r\n\r\n\r\n“We want you to have a fabulous time at camp!” Jodi cried. She was standing at the front with the other counselors: Paige and Veronica and Duncan—who we’d later call “Hunky Duncan”—and Eric and Carla and the others.\r\n\r\nOf course they’d chosen Jodi to speak. Jodi was so perky.\r\n\r\nShe told us that we were beginning a special relationship with our Parent Figures. It was very important not to fixate. We shouldn’t fixate on the Parent Figures, and we definitely shouldn’t fixate on the counselors.\r\n\r\nMy stupid lamp. It was so fucking blue. Why would you bring something blue? “The most important people in your life are the other campers!” Jodi burbled. “These are the people you’ll know for the rest of your life! Now, I want you to turn to the person next to you and say, Hi, Neighbor!”\r\n\r\nHi, Neighbor! And later, in the forest, Cee sang to the sky: Fuck you, Neighbor!\r\n\r\nCamp was special. We were told that it was special. At camp you connected with people and with nature. There was no personal tech. That freaked a lot of people out at first. We were told that later we’d all be able to get online again, but we’d be adults, and our relationships would be in place, and we would have learned our Life Skills, and we’d be ready. But now was special: Now was the time of friends and of the earth.\r\n\r\nCee raised her hand: “What about earthquakes?”\r\n\r\n“What?” said Veronica, who taught The Natural World. Veronica was from an older group of counselors; she had gray hair and leathery skin from taking kids on nature hikes and she was always stretching to show that you could be flexible when you were old.\r\n\r\n“What about earthquakes?” Cee asked. “What about fires? Those are natural. What about hurricanes?”\r\n\r\nVeronica smiled at us with her awesome white teeth, because you could have awesome white teeth when you were old, it was all a matter of taking care of yourself with the right Life Skills.\r\n\r\n“What an interesting question, Celia!”\r\n\r\nWe were told that all of our questions were interesting. There’s no such thing as a stupid question! The important thing was always to participate. We were told to participate in classes and hikes and shopping sprees and mixers. In History we learned that there used to be prejudice, but now there wasn’t: It didn’t matter where you came from or who you loved, just join in! That’s why even the queer girls had to go to the mixers; you could take your girlfriend, but you had to go. Katie used to go in a tie and Elle would wear flowers. They rolled their eyes but they went anyway and danced and it was fun. Camp was so fun.\r\n\r\nCee raised her hand: “Why is it a compliment to tell somebody it doesn’t matter who they are?”\r\n\r\nWe were told to find a hobby. There were a million choices and we tried them all: sports and crafts and art and music. There was so much to do. Every day there was some kind of program and then there were chores and then we had to study for class. No wonder we forgot stuff. We were told that forgetting was natural. Forgetting helped us survive, Jodi told us in Life Skills class, tears in her eyes. She cried as easily as Max. She was more like a kid sister than a counselor. Everybody wanted Jodi to be okay. “You’ll always be reminded,” she said in her hoarse, heroic voice. “You’ll always have your Parent Figures. It’s okay to be sad! But remember, you have each other now. It’s the most special bond in the world.”\r\n\r\nCee raised her hand: “What if we don’t want us?”\r\n\r\nCee raised her hand, but of course she raised her hand. She was Cee. She was Cee, she’d always been Cee, do you see what I mean? I mean she was like that right from the day we arrived; she was brash, messy Cee before the night in the bathroom, before she supposedly puked out her bug. I couldn’t see any difference. I could not see any difference. So of course I had second thoughts. I wished so bad I hadn’t flushed the toilet. What if there wasn’t anything in it? What if somebody’d dropped a piece of jewelry in there, some necklace or brooch and I thought it was a bug? That could have happened. Camp was so fun. Shaving my legs for the mixer. Wearing red shoes. We were all so lucky. Camp was the best thing ever. Every Child at Camp! That was the government slogan: ECAC. Cee used to make this gag face whenever she said it. ECAC. Ick. Sick.\r\n\r\n\r\nShe took me into the forest. It was a mixer. Everybody else was crowded around the picnic tables. The lake was flat and scummy and the sun was just going down, clouds of biting insects golden in the haze.\r\n\r\n“Come on,” Cee said, “let’s get out of here.”\r\n\r\nWe walked over the sodden sand into the weeds. A couple of the counselors watched us go: I saw Hunky Duncan look at us with his binoculars, but because we were just two girls they didn’t care. It only mattered if you left the mixer with a boy. Then you had to stop at the Self-Care Stand for condoms and an injection, because becoming a parent is a serious decision! Duncan lowered his binoculars, and we stepped across the rocks and into the trees.\r\n\r\n“This is cool!” Cee whispered.\r\n\r\nI didn’t really think it was cool—it was weird and sticky in there, and sort of dark, and the weeds kept tickling my legs—but I went farther because of Cee. It’s hard to explain this thing she had: She was like an event just about to happen and you didn’t want to miss it. I didn’t want to, anyway. It was so dark we had to hold hands after a while. Cee walked in front of me, pushing branches out of the way, making loud crackling sounds, sometimes kicking to break through the bushes. Her laugh sounded close, like we were trapped in the basement at Lulu’s. That’s what it was like, like being trapped in this amazing place where everything was magically half-price. I was so excited and then horrified because suddenly I had to take a dump, there was no way I could hold it in.\r\n\r\n“Wait a sec,” I told Cee, too embarrassed to even tell her to go away. I crouched down and went and wiped myself on the leaves, and I’m sure Cee knew what was up but she took my hand again right after I was done. She took my disgusting hand. I felt like I wanted to die, and at the same time, I was floating. We kept going until we stumbled into a clearing in the woods. Stars above us in a perfect circle.\r\n\r\n“Woo-hooooo!” Cee hollered. “Fuck you, Neighbor!”\r\n\r\nShe gave the stars the finger. The silhouette of her hand stood out against the bright. I gave the stars the finger, too. I was this shitty, disgusting kid with a lamp and a plaque for parents but I was there with Cee and the time was exactly now. It was like there was a beautiful starry place we’d never get into— didn’t deserve to get into—but at the same time we were better than any brightness. Two sick girls underneath the stars.\r\n\r\nFuck you, Neighbor! It felt so great. If I could go anywhere I’d want to go there.\r\n\r\nThe counselors came for us after a while. A circle of them with big flashlights, talking in handsets. Jodi told us they’d been looking everywhere for us. “We were pretty worried about you girls!”\r\n\r\nFor the first time I didn’t feel sorry for her; I felt like I wanted to kick her in the shins. Shit, I forgot about that until right now. I forget so much. I’m like a sieve. Sometimes I tell Pete I think I’m going senile. Like premature senile dementia. Last month I suggested we go to Clearview for our next vacation and he said, “Tish, you hate Clearview, don’t you remember?”\r\n\r\nIt’s true, I hated Clearview: The beach was okay, but at night there was nothing to do but drink. So we’re going to go to the Palace Suites instead. At least you can gamble there.\r\n\r\nCee, I wonder about you still, so much—I wonder what happened to you and where you are. I wonder if you’ve ever tried to find me. It wouldn’t be hard. If you linked to the register you’d know our graduating class ended up in Food Services. I’m in charge of inventory for a chain of grocery stores, Pete drives delivery, Katie stocks the shelves. The year before us, the graduates of our camp went into the army; the year after us they also went into the army; the year after that they went into communications technologies; the year after that I stopped paying attention. I stopped wondering what life would have been like if I’d graduated in a different year. We’re okay. Me and Pete—we make it work, you know? He’s sad because I don’t want to have kids, but he hasn’t brought it up for a couple of years. We do the usual stuff, hobbies and vacations. Work. Pete’s into gardening. Once a week we have dinner with some of the gang. We keep our Parent Figures on the hall table, like everyone else. Sometimes I think about how if you’d graduated with us, you’d be doing some kind of job in Food Services too. That’s weird, right?\r\n\r\nBut you didn’t graduate with us. I guess you never graduated at all.\r\nI’ve looked for you on the buses and in the streets. Wondering if I’d suddenly see you. God, I’d jump off the bus so quick, I wouldn’t even wait for it to stop moving. I wouldn’t care if I fell in the gutter. I remember your tense face, your nervous look, when you found out that we were going to have a check-up.\r\n\r\n“I can’t have a check-up,” you said.\r\n\r\n“Why not?” I asked.\r\n\r\n“Because,” you said, “because they’ll see my bug is gone.”\r\n\r\nAnd I just—I don’t know. I felt sort of embarrassed for you. I’d convinced myself the whole bug thing was a mistake, a hallucination. I looked down at my book, and when I looked up you were standing in the same place, with an alert look on your face, as if you were listening.\r\n\r\nYou looked at me and said: “I have to run.”\r\n\r\nIt was the stupidest thing I’d ever heard. The whole camp was monitored practically up to the moon. There was no way to get outside.\r\n\r\nBut you tried. You left my room, and you went straight out your window and broke your ankle.\r\n\r\nA week later, you were back. You were on crutches and you looked . . . wrecked. Destroyed. Somebody’d cut your hair, shaved it close to the scalp. Your eyes stood out, huge and shining.\r\n\r\n“They put in a bug in me,” you whispered.\r\n\r\nAnd I just knew. I knew what you were going to do.\r\n\r\nMax came to see me a few days ago. I’ve felt sick ever since. Max is the same, hunched and timid; you’d know her if you saw her. She sat in my living room and I gave her coffee and lemon cookies and she took one bite of a cookie and started crying.\r\n\r\nCee, we miss you, we really do.\r\n\r\nMax told me she’s pregnant. I said congratulations. I knew she and Evan have been wanting one for a while. She covered her eyes with her hands—she still bites her nails, one of them was bleeding—and she just cried.\r\n\r\n“Hey, Max,” I said, “it’s okay.”\r\n\r\nI figured she was extra-emotional from hormones or whatever, or maybe she was thinking what a short time she’d have with her kid, now that kids start camp at eight years old.\r\n\r\n“It’s okay,” I told her, even though I’d never have kids—I couldn’t stand it.\r\n\r\nThey say it’s easier on the kids, going to camp earlier. We—me and you and Max—we were the tail end of Generation Teen. Max’s kid will belong to Generation Eight. It’s supposed to be a happier generation, but I’m guessing it will be sort of like us. Like us, the kids of Generation Eight will be told they’re sad, that they need their parents and that’s why they have Parent Figures, so that they can always be reminded of what they’ve lost, so that they can remember they need what they have now.\r\n\r\nI sat across the coffee table from Max, and she was crying and I wasn’t hugging her because I don’t really hug people anymore, not even Pete really, I’m sort of mean that way, it’s just how I turned out, and Max said “Do you remember that night in the bathroom with Cee?”\r\n\r\nDo I remember?\r\n\r\nHer eyes were all swollen. She hiccupped. “I can’t stop thinking about it. I’m scared.” She said she had to send a report to her doctor every day on her phone. How was she feeling, had she vomited? Her morning sickness wasn’t too bad, but she’d thrown up twice, and both times she had to go in for a check-up.\r\n\r\n“So?” I said.\r\n\r\n“So—they always put you to sleep, you know . . .”\r\n\r\n“Yeah.”\r\n\r\nI just said “Yeah.” Just sat there in front of her and said “Yeah.” Like I was a rock. After a while I could tell she was feeling uncertain, and then she felt stupid. She picked up her stuff and blew her nose and went home. She left the tissues on the table, one of them spotted with blood from her bitten nail. I haven’t really been sleeping since she left. I mean, I’ve always had trouble sleeping, but now it’s a lot worse, especially since I started writing in your book. I just feel sick, Cee, I feel really sick. All those check-ups, so regular, everyone gets them, but you’re definitely supposed to go in if you’re feeling nauseous, if you’ve vomited, it might be a superflu! The world is full of viruses, good health is everybody’s business! And yeah, they put you to sleep every time. Yeah. “They put a bug in me,” you said. Camp was so fun. Jodi came to us, wringing her hands. “Cee has been having some problems, and it’s up to all of us to look after her, girls! Campers stick together!” But we didn’t stick together, did we? I woke up and you were shouting in the hall, and I ran out there and you were hopping on your good foot, your toothbrush in one hand, your Mother Figure notebook in the other, and I knew exactly what they’d caught you doing. How did they catch you? Were there really cameras in the bathroom? Jodi’d called Duncan, and that was how I knew how bad it was: Hunky Duncan in the girls’ hallway, just outside the bathroom, wearing white shorts and a seriously pissed-off expression. He and Jodi were grabbing you and you were fighting them off. “Tisha,” called Jodi, “it’s okay, Cee’s just sick, she’s going to the hospital.” You threw the notebook. “Take it!” you snarled. Those were your last words. Your last words to me. I never saw you again except in dreams. Yeah, I see you in dreams. I see you in your white lacy nightgown. Cee, I feel sick. At night I feel so sick, I walk around in circles. There’s waves of sickness and waves of something else, something that calms me, something that’s trying to make the sickness go away. Up and down it goes, and I’m just in it, just trying to stand it, and then I sleep again, and I dream you’re beside me, we’re leaning over the toilet, and down at the very bottom there’s something like a clump of trees and two tiny girls are standing there giving us the finger. It’s not where I came from, but it’s where I started. I think of how bright it was in the bathroom that night, how some kind of loss swept through all of us, electric, and you’d started it, you’d started it by yourself, and we were with you in that hilarious and total rage of loss. Let’s lose it. Let’s lose everything. Camp wasn’t fun. Camp was a fucking factory. I go out to the factory on Fridays to check my lists over coffee with Elle. The bus passes shattered buildings, stick people rooting around in the garbage. Three out of five graduating classes join the army. Give me the serenity to accept the things I cannot change! How did I even get here? I’d ask my mom if she wasn’t a fucking lamp. Cee, I feel sick. I should just grab my keys, get some money, and run to Max’s house, we should both be sick, everybody should lose it together. I shouldn’t have told you not to tell the others. We all should have gone together. My fault. I dream I find you and Puss in a bathroom in the train station. There’s blood everywhere, and you laugh and tell me it’s hair dye. Cee, it’s so bright it makes me sick. I have to go now. It’s got to come out.'),
(37, 21, 3, 'If you can', 'This is a poem to remind everyone that anything is possible if we have confidence in ourselves.', '', '', 'If you can keep your head when all about you\r\nAre losing theirs and blaming it on you;\r\nIf you can trust yourself when all men doubt you,\r\nBut make allowance for their doubting too;\r\nIf you can wait and not be tired by waiting,\r\nOr, being lied about, don’t deal in lies,\r\nOr, being hated, don’t give way to hating,\r\nAnd yet don’t look too good, nor talk too wise;\r\nIf you can\r\nIf you can\r\nIf you can'),
(38, 21, 3, 'Do not go gentle', 'Another poem to let you guys find the strength within to achieve your goal.', '', '', 'Do not go gentle into that good night,\r\nOld age should burn and rave at close of day;\r\nRage, rage against the dying of the light.\r\n\r\nThough wise men at their end know dark is right,\r\nBecause their words had forked no lightning they\r\nDo not go gentle into that good night.\r\n\r\nGood men, the last wave by, crying how bright\r\nTheir frail deeds might have danced in a green bay,\r\nRage, rage against the dying of the light.\r\n\r\nWild men who caught and sang the sun in flight,\r\nAnd learn, too late, they grieved it on its way,\r\nDo not go gentle into that good night.\r\n\r\nGrave men, near death, who see with blinding sight\r\nBlind eyes could blaze like meteors and be gay,\r\nRage, rage against the dying of the light.'),
(39, 20, 4, 'I Trust You', 'My first Song', '', 'Song1.mp3', ''),
(40, 20, 4, 'End of Days', 'This time i tried something different. Hope you guys like it.', '', 'Song2.mp3', ''),
(41, 22, 2, 'Story', 'This is a Story', '', '', 'Welcome to my second post'),
(42, 20, 4, 'song', 'This is a song', '', 'Song2.mp3', ''),
(45, 19, 1, 'Aurora', 'Another of my clicks during night', 'PIC9.jpg', '', ''),
(46, 37, 3, 'poem', 'THIS IS A POEM', '', '', 'SAHKFDHAH\r\nAFUAWHHFOIASEFJ]EOAFHFYA\r\nAOIUFAWQW');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `post-id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `post-id`, `user`, `comment`) VALUES
(7, 40, 'Ritik', 'A nice song but could have done better'),
(8, 38, 'Ritik', 'I like it very much'),
(9, 40, 'Megha', 'Good song'),
(10, 35, 'Sakshi', 'Mice suggestion megha'),
(11, 43, 'Jatin', 'Good click bro'),
(12, 39, 'Sakshi', 'Good Song bro!\r\nA nice first attempt. The drop deserves a special mention.'),
(13, 39, 'Ritik', 'Great song! Keep up the good work'),
(15, 45, 'testuser', 'Good '),
(16, 40, 'Ritik', 'fff');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `pic`) VALUES
(19, 'Ritik', '47872f95a309a50ebd43c2ea39882f6c', 'DP1.jpg'),
(20, 'Jatin', '8c9e5de7349dbbd6dbd07b21efb4282e', 'DP2.jpg'),
(21, 'Megha', '8e955e947a7f8b73665ff055d6508f28', 'DP3.jpg'),
(22, 'Sakshi', '7934ca3ea4842410eb359e579c0e7b5e', 'DP6.jpg'),
(36, 'abc', 'b24331b1a138cde62aa1f679164fc62f', ''),
(37, 'testuser', 'a3fe2c0b846d21cef58f06284c57f276', 'DP8.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`fav-id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`not-id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post-id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `fav-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `not-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post-id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
