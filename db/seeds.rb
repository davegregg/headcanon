# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#


## add views to the posts, add more posts to test views func
Post.new(
  title: 'Existentialism\'s Two Moments: Deconstruction & Construction',
  summary: <<-HTML,
    Struggle against absurdity is itself intrinsically valuable because it endows life with dignity and purpose.
  HTML
  body: <<-HTML,
      <p>Existentialism's deconstruction is well-known, rising even into pop culture. But Existentialism's constructive messages remain largely ignored. Michelman, in <em>The A to Z of Existentialism,</em> gives us a foothold to get started:<p>
      <blockquote>
          "What Meursault knows [in 'The Stranger'] is that life is absurd. The problem, which Camus attempted to address in subsequent works like 'The Rebel,' is that, if life is absurd, then it would appear that 'all is permitted': 'If one believes in nothing, if nothing makes sense, if we can assert no value whatsoever, everything is permissible and nothing is important' ('The Rebel', 13). This problem was seized on by critics like Gabriel Marcel, who criticized Camus's conception of the absurd as '...a Narcissism of nothingness' (HV, 211-212). An avenue of response was suggested by Camus's contention that struggle against absurdity is itself intrinsically valuable because it endows life with dignity and purpose. If this is the case, then the philosophy of the absurd can at least defeat the charge of nihilism, the view that there are no intrinsic values. Indeed, Sisyphus and Meursault are not nihilists, in that they cling to the happiness of earthly existene as an ultimate good. The more difficult question is how the absurdist position overcomes moral relativism--the view that 'everything is permissible,' even, for example, killing another person. In writings subsequent to 'The Stranger,' such as 'The Plague' (1947) and 'The Rebel' (1951), Camus acknowledged the limits of the absurdist position. He reframed his philosophy of the absurd in terms of a philosophy of 'rebellion' that recognized courage, freedom, dignity, compassion, and solidarity with others as universal human values."
      </blockquote>
  HTML
  views: 347
).save
Post.new(
  title: 'Stoicism in Existential Therapy',
  summary: <<-HTML,
    When the Greeks faced the same predicament, <strong>they went Stoic.</strong>
  HTML
  body: <<-HTML,
    <p>The term <em>existential crisis</em> can be described as the tragic loss of symbolic meaning. This isn't a new phenomenon, but our strategies have shifted. John E. Obrien make an interesting note:</p>
    <blockquote>"When the Greeks faced the same predicament, <strong>they went Stoic.</strong>"</blockquote>
  HTML
  views: 132
).save
Post.new(
  title: 'Necessity and Possibility',
  summary: <<-HTML,
    <em>Delimitation</em> speaks of necessity... while <em>Definition</em> speaks of possibility, of internal or localized freedom....
  HTML
  body: <<-HTML,
    <p><em>Delimitation</em> and <em>Definition</em> can be used nearly interchangeably, because they do refer to the same thing: finiteness. But the two words express different attitudes about finiteness. <em>Delimitation</em> speaks of necessity—what you <em>cannot</em> be, do, or have—while <em>Definition</em> speaks of possibility, of internal or localized freedom—what you <em>can</em> be, do, or have.</p>
    <p>Your finiteness has both of these qualities, and they correspond to two modes of being: objectness and subjectness.</p>
  HTML
  views: 67
).save
Post.new(
  title: 'The Cost of Perfect Memory',
  summary: <<-HTML,
    That I experience an accident as interference, and my own anxiety as a disruption of the even keel of repose, indicates that I already have a blueprint I intend to impose on the course of events.
  HTML
  body: <<-HTML,
    <p>Jerome A. Miller, in <em>The Way of Suffering: A Geography of Crisis</em>
    (pp. 8-9.), reminds us that memory fails. But it fails most in capturing the ordinary. And...</p>
    <blockquote>
      <p>"Were memory submissive to that rebuke, I would memorize everything—which tie I wear each day, the food eaten at every meal, the products on every shopping list, the whole cluttered stream of everyday life. It is difficult but not
      impossible to imagine a person so completely immersed in and fettered by the brute data of daily existence. If a person were thus immersed, could we say in his behalf that he is obedient to the concrete reality of life? That he refuses to flee from
      the mundane but completely accepts it in its finitude and facticity? Indeed, no other mode of existence seems, at first glance, so perfectly submissive to the given and so immune to the appeals of illusion and fantasy.</p>
      <p>"But we wear clothes that 'go together'; we have schedules of chores and well-planned lists of what to buy in the supermarket. The whirl of detail in which I am ordinarily immersed does not flood me like an innocent victim: it is the
      helter-skelter of my own projects, each of which aims at organizing life. Far from being a chaos of unrelated data, daily existence consists of a series of plans I myself impose on my world: if I am made dizzy by its frantic rhythm, I am made dizzy
      by my own obsessive busyness. Ordinary existence is the opposite of letting be what is. It is my attempt to subdue the totality of what is to the plans I have made for it. It is the will to repress anything that tries to interrupt the flow of my
      routines. The essence of the ordinary is control, and the essence of control is the will to dominate....</p>
      <p>"Let us look at that placid uneventfulness which is assumed to be characteristic of the everyday: it is never as uneventful as we wish it to be. On the world's side, it is marred by accidents, the rust and breakdown of tools designed to be ready
      for use, the intransigence of things and persons opposed to our routines; and, on our side, it is marred by complaints and frustrations, by a thousand brief annoyances which eat away at the fabric of repose. Both the world and our own temperaments
      habitually throw us off the track of our routines.</p>
      <p>"That I experience an accident as interference, and my own anxiety as a disruption of the even keel of repose, indicates that I already have a blueprint I intend to impose on the course of events. If a day 'proves uneventful,' it is not because I
      accept whatever happens, nor is it because nothing happens. It is because everything has happened as planned. There is a placidity to such days but is that not because I feel during them an ease that is similar to that the despot feels when all
      conspirators have been silenced? 'Everything goes smoothly' means that the world remains within the boundaries I have decided to assign it. To live without interruptions, to have nothing intrude upon or resist the smooth procedures of my
      schedule—such, indeed, is peace, but it is the peacefulness of a will which has first willed violence. If I go so far as to memorize every detail of the ordinary, if those details are nothing but data which get their meaning from my projects, if
      those projects originate in my plan for how I want my life to go, my fundamental purpose is to prevent the occurrence of anything out of the ordinary or upsetting."</p>
    </blockquote>
  HTML
  views: 422
).save
Post.new(
  title: 'The Crowd Is Untruth',
  summary: <<-HTML,
    There is... no one who has more contempt for what it is to be a human being than those who make it their profession to lead the crowd.
  HTML
  body: <<-HTML,
  <p>Søren Kierkegaard, in <em>On the Dedication to "That Single Individual",</em> translation by Bellinger:</p>
    <blockquote>
      <p>A crowd—not this or that, one now living or long dead, a crowd of the lowly or of nobles, of rich or poor, etc., but in its very concept—is untruth, since a crowd either renders the single individual wholly unrepentant and irresponsible, or weakens his responsibility by making it a fraction of his decision. Observe, there was not a single soldier who dared lay a hand on Caius Marius; this was the truth. But given three or four women with the consciousness or idea of being a crowd, with a certain hope in the possibility that no one could definitely say who it was or who started it: then they had the courage for it; what untruth! The untruth is first that it is "the crowd," which does either what only the single individual in the crowd does, or in every case what each single individual does. For a crowd is an abstraction, which does not have hands; each single individual, on the other hand, normally has two hands, and when he, as a single individual, lays his two hands on Caius Marius, then it is the two hands of this single individual, not after all his neighbor's, even less—the crowd's, which has no hands. In the next place, the untruth is that the crowd had "the courage" for it, since never at any time was even the most cowardly of all single individuals so cowardly, as the crowd always is. For every single individual who escapes into the crowd, and thus flees in cowardice from being a single individual (who either had the courage to lay his hand on Caius Marius, or the courage to admit that he did not have it), contributes his share of cowardice to "the cowardice," which is: the crowd....</p>
      <p>The crowd is untruth. There is therefore no one who has more contempt for what it is to be a human being than those who make it their profession to lead the crowd. Let someone, some individual human being, certainly, approach such a person, what does he care about him; that is much too small a thing; he proudly sends him away; there must be at least a hundred. And if there are thousands, then he bends before the crowd, he bows and scrapes; what untruth! No, when there is an individual human being, then one should express the truth by respecting what it is to be a human being; and if perhaps, as one cruelly says, it was a poor, needy human being, then especially should one invite him into the best room, and if one has several voices, he should use the kindest and friendliest; that is the truth. When on the other hand it was an assembly of thousands or more, and "the truth" became the object of balloting, then especially one should godfearingly—if one prefers not to repeat in silence the <em>Our Father: deliver us from evil</em>—one should godfearingly express, that a crowd, as the court of last resort, ethically and religiously, is the untruth, whereas it is eternally true, that everyone can be the <em>one.</em> This is the truth.</p>
    </blockquote>
  HTML
  views: 967
).save
Post.new(
  title: 'When Death Spoiled the Banquet of the Gods',
  summary: <<-HTML,
    It was but a fancy, a horrible dream-shape that fearsome to the merry tables strode...
  HTML
  body: <<-HTML,
    <p>Novalis, in <em>Hymns to the Night,</em> translation by George MacDonald:</p>
      <blockquote><p>In ancient times an iron Fate lorded it, with dumb force, over the widespread families of men. A gloomy oppression swathed their anxious souls: the earth was boundless, the abode of the gods and their home. From eternal ages stood its mysterious structure. Beyond the red hills of the morning, in the sacred bosom of the sea, dwelt the sun, the all-enkindling, live luminary. An aged giant upbore the happy world. Prisoned beneath mountains lay the first-born sons of mother Earth, helpless in their destroying fury against the new, glorious race of gods, and their kindred, glad-hearted men. Ocean's dusky, green abyss was the lap of a goddess. In the crystal grottos revelled a wanton folk. Rivers, trees, flowers, and beasts had human wits. Sweeter tasted the wine, poured out by Youth impersonated; a god was in the grape-clusters; a loving, motherly goddess upgrew in the full golden sheaves; love's sacred carousal was a sweet worship of the fairest of the goddesses. Life revelled through the centuries like one spring-time, an ever-variegated festival of the children of and the dewllers on the earth. All races childlike adored the ethereal, thousand-fold flame as the one sublimest thing in the world.</p>
      <p>It was but a fancy, a horrible dream-shape—</p>
      <blockquote class="blockquote-reverse">That fearsome to the merry tables strode,<br>
        And wrapt the spirit in wild consternation.<br>
        The gods themselves here counsel knew nor showed<br>
        To fill the stifling heart with consolation.<br>
        Mysterious was the monster's pathless road,<br>
        Whose rage would heed no prayer and no oblation;<br>
        'Twas Death who broke the banquet up with fears,<br>
        With anguish, with dire pain, and bitter tears.
    </blockquote>
  HTML
  views: 167
).save
