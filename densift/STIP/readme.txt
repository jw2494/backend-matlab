

                    HOLLYWOOD2
         Human Actions and Scenes Dataset
   


We provide a dataset with 12 classes of human actions and 10 classes 
of scenes distributed over 3669 video clips and approximately 20.1 hours 
of video in total. The dataset intends to provide a comprehensive 
benchmark for human action recognition in realistic and challenging 
settings. The dataset is composed of video clips from 69 movies 
(see the list of movies below). A part of this dataset was originally 
used in the paper "Actions in Context", Marszalek et al. in Proc. CVPR'09.

Action samples were collected by means of automatic script-to-video 
alignment in combination with text-based script classification following 
Laptev at al. CVPR'08. Video samples generated from training movies 
correspond to the automatic training subset with noisy action labels. 
Based on this subset we also constructed a clean training subset with 
action labels manually verified to be correct. We also provide a test 
subset with manually checked action labels. The 12 considered action
classes are: AnswerPhone, DriveCar, Eat, FightPerson, GetOutCar, 
HandShake, HugPerson, Kiss, Run, SitDown, SitUp and StandUp.

Scene classes are selected automatically from scripts such as to maximize 
co-occurrence with the given action classes and to capture action context 
as described in Marszalek et al. CVPR'09. Scene video samples are then 
generated using script-to-video alignment. The labels of test scene 
samples are manually verified to be correct. The 10 selected scene
classes are: EXT-house, EXT-road INT-bedroom, INT-car, INT-hotel, 
INT-kitchen, INT-living-room, INT-office, INT-restaurant and INT-shop.

All video samples are encoded using DivX 5.2.1 codec. 

Download details
================

The dataset is split in two parts with actions and scene samples respectively:

ftp://ftp.irisa.fr/local/vistas/actions/Hollywood2-actions.tar.gz
(approx. size: 15Gb | md5sum: 55948d0ef45a569a2134ea44e6f8976c)

ftp://ftp.irisa.fr/local/vistas/actions/Hollywood2-scenes.tar.gz
(approx. size: 25Gb | md5sum: b77f9ffe18ad5ea04957bb4c7725f5ce)

The copy of the dataset is also available under the following links:
http://lear.inrialpes.fr/people/marszalek/data/hollywood2/Hollywood2-actions.tar.gz
http://lear.inrialpes.fr/people/marszalek/data/hollywood2/Hollywood2-scenes.tar.gz

Action video samples are provided in directory AVIClips for three subsets 
according to the table above. The annotation of samples w.r.t. 12 action classes
is located in ClipSets directory. Similarly, the video samples and annotations 
for scene samples are located in AVSClipsScenes and ClipSetsScenes directories 
respectively.
	
Example:
The file ClipSets/AnswerPhone_autotrain.txt contains annotation for AnswerPhone 
action in the automatic training subset with 810 video clips. Each line of the 
annotation file provides a name of a video sample in AVIClips directory as well 
as the flag = {1|-1} indicating whether the sample contains AnswerPhone or not. 
(Our annotation format is similar to PASCAL VOC annotation format for image 
classification task).

We also provide conditional probability tables 

http://www.irisa.fr/vista/actions/hollywood2/hollywood2_condprob_scenesgivenact_scripttrain.txt
http://www.irisa.fr/vista/actions/hollywood2/hollywood2_condprob_actgivenscenes_scripttrain.txt

for p(scene|action) and p(action|scene) estimated from an independent set of 
movie scripts and used in "Actions in Context" Marszalek et al. CVPR'09 paper:



Source movies
=============

The 69 movies used to generate clips in this dataset were divided into 33 training 
movies and 36 test movies as follows.

Training movies:
American Beauty, As Good as It Gets, Being John Malkovich, The Big Lebowski, Bruce 
Almighty The Butterfly Effect, Capote, Casablanca, Charade, Chasing Amy, The Cider 
House Rules, Clerks, Crash, Double Indemnity, Forrest Gump, The Godfather, The Graduate, 
The Hudsucker Proxy, Jackie Brown, Jay and Silent Bob Strike Back, Kids, Legally Blonde, 
Light Sleeper, Little Miss Sunshine, Living in Oblivion, Lone Star, Men in Black, 
The Naked City, Pirates of the Caribbean: Dead Man’s Chest, Psycho, Quills, Rear 
Window, Fight Club.

Test movies:
Big Fish, Bringing Out The Dead, The Crying Game, Dead Poets Society, Erin Brockovich, 
Fantastic Four, Fargo, Fear and Loathing in Las Vegas, Five Easy Pieces, Gandhi, 
Gang Related, Get Shorty, The Grapes of Wrath, The Hustler, I Am Sam, Independence 
Day, Indiana Jones and The Last Crusade, It Happened One Night, It’s a Wonderful Life, 
LA Confidential, The Lord of the Rings: The Fellowship of the Ring, Lost Highway, 
The Lost Weekend, Midnight Run, Misery, Mission to Mars, Moonstruck, Mumford, The 
Night of the Hunter, Ninotchka, O Brother Where Art Thou, The Pianist, The Princess 
Bride, Pulp Fiction, Raising Arizona, Reservoir Dogs.



Citation
========

Please cite the following paper if using this dataset in your publications:

@InProceedings{marszalek09,
    author    = "Marcin Marsza{\l}ek and Ivan Laptev and Cordelia Schmid",
    title     = "Actions in Context",
    booktitle = "IEEE Conference on Computer Vision \& Pattern Recognition",
    year      = "2009"
}

