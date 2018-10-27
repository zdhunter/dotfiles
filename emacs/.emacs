;; Include all your packages in the list to have them automatically downloaded, validated
;; and updated
(load "~/.emacs.d/my-packages.el")

;; MODULE LOADING
;; Keep everything relevant in the same file. This greatly
;; aids in debugging and keeping track of what you actually
;; use.
(require 'interface-conf)
(require 'helm-conf)
(require 'flycheck-conf)
(require 'company-conf)
(require 'yasnippet-conf)
(require 'asm-conf)
(require 'web-conf)
(require 'lua-conf)
(require 'python-conf)
(require 'c-conf)
(require 'keys-conf)
(require 'general-conf)

;; User details
(setq user-full-name "Alex HG")
(setq user-mail-address "alejandro720@protonmail.com")

;; Warning level
;; Careful, if you completely disable them you may end up making an otherwise simple debugging
;; process a complete nightmare
(setq warning-minimum-level :emergency)

;; Backup files
;; Keep them organized
(setq backup-directory-alist `(("." . "~/.emacs.d/backup_files")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)
;; Or disable them (at your own risk!)
;; (setq make-backup-files nil)

;; Automatically recompile everything that may need it
;; KEEPING THIS ENABLED SLOWS DOWN INITIALIZATION
(byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

;;END CUSTOM EMACS CONFIGURATION


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#191919" "#dc657d" "#84b97c" "#c3ba63" "#639ee4" "#b888e2" "#639ee4" "#a7a7a7"])
 '(ansi-term-color-vector
   [unspecified "#FFFFFF" "#d15120" "#5f9411" "#d2ad00" "#6b82a7" "#a66bab" "#6b82a7" "#505050"] t)
 '(background-color "#202020")
 '(background-mode dark)
 '(beacon-color "#F8BBD0")
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(cursor-color "#cccccc")
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "6749346a23542aad64e81ac371c32a7c88d1e9120c310533d4007f3461dfb145" "35b000995eb4a526249078664d91b056feab7e96e81b2f226a0d9cad7f0a416e" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" "11e57648ab04915568e558b77541d0e94e69d09c9c54c06075938b6abc0189d8" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "039eb505cec29b4521ce5ecf5abf523492005f0c65d0640f62e53e2d3068b393" "1f3344c1b128026f1187213cfbdad4ec0849f96ad437d61d42a42f976b5def4c" "218bc69ef19fd1f681cdded7b85924e41242fe87a6033df823499822f1397f1a" "8885761700542f5d0ea63436874bf3f9e279211707d4b1ca9ed6f53522f21934" "6e32d7aab92ad2ad4d3a915cd9ace5dc1d9d8f0486b785bdb86c79ff5ca0c189" "74f16f67a9a9b44ca05d67027bbc62af0921c0535dc57bd6f3ee0a459599e54b" "4d34cfa78ac67f7b257639d2aadd943e6944bd12a1ebe4d0981697d5d85e066d" "4639288d273cbd3dc880992e6032f9c817f17c4a91f00f3872009a099f5b3f84" "87a431903d22fa1cbb2becd88572e7d985e28c2253935448d0d754c13e85a980" "8d373c184700a2c7020820dbeb098662f64bf755381d5fccdfe49bdede8ecb7e" "9583f0b6511c5774e5ebfe32662105b4d7157f51473f64e5e1d8be3fc8565f01" "18a861dd53173e3af4a25ae90827b6dbf34981170660da8b08276e0a0d4f5cd1" "de9fa4b3614611bed2fe75e105bd0d37542924b977299736f158dd4d7343c666" "c93889826aa14d6bf4ff491780d0888d217e67e04209da823720ee50435e3bb1" "30289fa8d502f71a392f40a0941a83842152a68c54ad69e0638ef52f04777a4c" "8ffdc8c66ceeaf7921f4510a70d808f01b303e6b4d177c947b442e80d4228678" "b44f201f67425ece29e34972be12917189cac2bac90e3e35d3160bce211d3199" "7023f8768081cd1275f7fd1cd567277e44402c65adfe4dc10a3a908055ed634d" "2fd7cca461e81f3e55a5cf503f938ada99f01bff39a41bd084ff80038fe8fe12" "4e5e58e42f6f37920b95a8502f488928b3dab9b6cc03d864e38101ce36ecb968" "d74fe1508cff43708fa2f97c4bf58d19f0e002b2e0c92bf958bf483113b7d89d" "48321220269870487b77a254535fef426795745b7799ee4dfb40b527e9126f9d" "2296db63b1de14e65390d0ded8e2b5df4b9e4186f3251af56807026542a58201" "f9f2ea69700b0c660f1a6507bbd0aec13e213b7618336ff20852f617991ae369" "ec1572b17860768fb3ce0fe0148364b7bec9581f6f1a08b066e13719c882576f" "54d091c28661aa25516d4f58044412e745eddb50c8e04e3a0788a77941981bb0" "2f57ee6507f30d3228cdddadd0150e7b2fd85dd7c818c2d6485888c7249c37e8" "6124d0d4205ae5ab279b35ac6bc6a180fbb5ca594616e1e9a22097024c0a8a99" "fd1dd4d022ece05400c7bd1efc2ae5cca5cd64a53f3670da49d0c8f0ef41f4e3" "7824eb15543c5c57c232c131ca64c4f25bfeeeda6744f71b999787a9172fa74e" "a77ced882e25028e994d168a612c763a4feb8c4ab67c5ff48688654d0264370c" "8d805143f2c71cfad5207155234089729bb742a1cb67b7f60357fdd952044315" "d986619578e8a8dabb846e91c54090b82d937672f54ffa0ef247c0428813d602" "d7383f47263f7969baf3856ab8b3df649eb77eafdff0c5731bee2ad18e0faed2" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "89536596ee5bdc5ef9ea3d3d5b515ea616285fa9274c836263024f1993f6b3dd" "a7004835dd02c73989032e57574087ec78ce8c2dd0d79f21cdd7423c01d9d2f5" "fad9c3dbfd4a889499f6921f54f68de8857e6846a0398e89887dbe5f26b591c0" "604ac011fc9bd042bc041330b3a5e5a86e764a46f7e9fe13e2a1f9f83bf44327" "713f898dd8c881c139b62cf05b7ac476d05735825d49006255c0a31f9a4f46ab" "2eade8d22ce8d204b074c42bc1b22fabccc7e8dd0bbdf47e0a233d1c619a6e7b" "2df493c5c7f329eef362290abdcd42a45abad98ffe33f639ecc55af084224e8b" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "8dce5b23232d0a490f16d62112d3abff6babeef86ae3853241a85856f9b0a6e7" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "1b6f7535c9526a5dbf9fb7e3604d0280feb7a07b970caf21ebd276ddc93ef07a" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "5a2772c3ba633ab530cf1c648c5828d2e061ca7d454c2d67c88d044fdd848fa7" "e491d84f66d5d540e8459e9af173789d6b70e42a57b2a537823441b6921b39bd" "621595cbf6c622556432e881945dda779528e48bb57107b65d428e61a8bb7955" "1195d71dfd46c43492993a528336ac7f8c7400b4c58338e5b40329d6cad655b6" "3f44e2d33b9deb2da947523e2169031d3707eec0426e78c7b8a646ef773a2077" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "f27c3fcfb19bf38892bc6e72d0046af7a1ded81f54435f9d4d09b3bff9c52fc1" "47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" "6c5a5c47749e7992b4da3011595f5470f33e19f29b10564cd4f62faebbe36b91" "ae3a3bed17b28585ce84266893fa3a4ef0d7d721451c887df5ef3e24a9efef8c" "3860a842e0bf585df9e5785e06d600a86e8b605e5cc0b74320dfe667bcbe816c" "725a0ac226fc6a7372074c8924c18394448bb011916c05a87518ad4563738668" "e6ccd0cc810aa6458391e95e4874942875252cd0342efd5a193de92bfbb6416b" "e03d2efd989b91f29ed5f91f160b0054031e6b6574950f7d64792a3acf0c9565" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "9b35c097a5025d5da1c97dba45fed027e4fb92faecbd2f89c2a79d2d80975181" "54449a089fc2f95f99ebc9b9b6067c802532fd50097cf44c46a53b4437d5c6cc" "3e160974b9e3e1b53270d1fb5bbaf56f0c689017e177972f72584bf096efc4cc" "e8825f26af32403c5ad8bc983f8610a4a4786eb55e3a363fa9acb48e0677fe7e" "cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" "0d5f2910bee90a86523eddc3fba78efe33a45a51d0e3db76aba6f287ef1ffa7c" "f2755fc8f0b4269cc45032715b8e11ea2d768aae47b8bb2a256ca1c8fdeb3628" "94e31993c54782f0db8494c42dc7ddd4195f9e3e43b9caff63f3f7f6ad6c8693" "6400c6eabcfb0789a82ccde9c819ad6cb6184a9da05027655624ecab019346a6" "aaffceb9b0f539b6ad6becb8e96a04f2140c8faa1de8039a343a4f1e009174fb" "af4dc574b2f96f5345d55b98af024e2db9b9bbf1872b3132bc66dffbf5e1ba1d" "0d456bc74e0ffa4bf5b69b0b54dac5104512c324199e96fc9f3a1db10dfa31f3" "f153e8ed90e4d79cf2c61560da2b3091d2f3b94da42aaddc707012be4608cf52" "2d15316ddb0b94c9c8b4c6cc77ef68486ff738d05bbb6edefec0dca7eafedcae" "c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "462d6915a7eac1c6f00d5acd8b08ae379e12db2341e7d3eac44ff7f984a5e579" "0329c772ed96053a73b9ddddf96c1183e23c267955bbdf78e7933057ce9da04b" "41c8c11f649ba2832347fe16fe85cf66dafe5213ff4d659182e25378f9cfc183" "2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "f11e219c9d043cbd5f4b2e01713c2c24a948a98bed48828dc670bd64ae771aa1" "abe3405767afe98b35b6a2b212af1fbc34e4f4c455310d2b7f2ffd2ec81d387b" "8dc7f4a05c53572d03f161d82158728618fb306636ddeec4cce204578432a06d" "ab98c7f7a58add58293ac67bec05ae163b5d3f35cddf18753b2b073c3fcd8841" "c9b89349d269af4ac5d832759df2f142ae50b0bbbabcce9c0dd53f79008443c9" "44bff5692b73759fa076b42ce37547d2ae98499d5c700bc8297973cb81212dcf" "02199888a97767d7779269a39ba2e641d77661b31b3b8dd494b1a7250d1c8dc1" "b47946a3a69d091a75b89819983835ac6f7fb94c9b491da38a4907b1185bebe0" "cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "7c58646ae5de2a5563bd4061d3ff9ee06a8f85d22b08f89f59f3a77a4797ece0" "20bf9f519f78b247da9ccf974c31d3537bee613ff11579f539b2781246dee73b" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "2f4f50d98073c01038b518066840638455657dc91dd1a225286d573926f36914" "04589c18c2087cd6f12c01807eed0bdaa63983787025c209b89c779c61c3a4c4" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "e583a7d8014bfbf602848b1b4d4643e52232756da90b2cebaa6dbe25027ee765" "a9ca5a377481001746ad8f5b416468c0cefa198e1c07f009ee0fc6c0df79224b" "264b639ee1d01cd81f6ab49a63b6354d902c7f7ed17ecf6e8c2bd5eb6d8ca09c" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "808b47c5c5583b5e439d8532da736b5e6b0552f6e89f8dafaab5631aace601dd" "1025e775a6d93981454680ddef169b6c51cc14cea8cb02d1872f9d3ce7a1da66" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "04790c9929eacf32d508b84d34e80ad2ee233f13f17767190531b8b350b9ef22" "428bdd4b98d4d58cd094e7e074c4a82151ad4a77b9c9e30d75c56dc5a07f26c5" "f5f3a6fb685fe5e1587bafd07db3bf25a0655f3ddc579ed9d331b6b19827ea46" "b0c5c6cc59d530d3f6fbcfa67801993669ce062dda1435014f74cafac7d86246" "542e6fee85eea8e47243a5647358c344111aa9c04510394720a3108803c8ddd1" "304c39b190267e9b863c0cf9c989da76dcfbb0649cbcb89592e7c5c08348fce9" "3a5f04a517096b08b08ef39db6d12bd55c04ed3d43b344cf8bd855bde6d3a1ae" "5a21604c4b1f2df98e67cda2347b8f42dc9ce471a48164fcb8d3d52c3a0d10be" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "7d3ee5cee22625af0a2acd2349242f5c1951f481d0f32c43afab45dd0c92477a" "1ce99f3eacdcb4d53e26274cb491f5ef4b9c623ebd7e5b2b380a91cf9c1429e9" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" "e3bf16af35586816b824bea36188215319b1cceb208d3518700d876c4c1a9cc7" "0309f5d28c57c327283e579abd9059fe7b4b32e2599879cd78846e2368f8e6e8" "5e5f7e60dfc8d73b75afe6ee9ca3a6f981ffabd9a31d82238a4d9e76145987bb" "4980e5ddaae985e4bae004280bd343721271ebb28f22b3e3b2427443e748cd3f" "71b9b4c5d2a5126586d204e20c3fb4797f70d3d057a0c8b03bac2c51893007a2" "889a93331bc657c0f05a04b8665b78b3c94a12ca76771342cee27d6605abcd0e" "ce585b387d84fc4bbb02b8766bfe82607f891e25602ec3550db858e09c10eb7d" "e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "663a653b805b97978c624687b67861f80dddceffc3ae434aa4c60bd22d12e70b" "1012cf33e0152751078e9529a915da52ec742dabf22143530e86451ae8378c1a" "30fe7e72186c728bd7c3e1b8d67bc10b846119c45a0f35c972ed427c45bacc19" "e4859645a914c748b966a1fe53244ff9e043e00f21c5989c4a664d649838f6a3" "b24ee45778296405489a56484d90901150b32e99c6dc48394184a745491d92f9" "84e39ed4c552b75e1cb09458c140a9b025598002533456b4c27db31d27e1e0d7" "ef1e992ef341e86397b39ee6b41c1368e1b33d45b0848feac6a8e8d5753daa67" "a632c5ce9bd5bcdbb7e22bf278d802711074413fd5f681f39f21d340064ff292" "5a17bc57f77719cf3bf1d260c88364d87e4632cc506c1c9a5998a684cca1fa07" "1a5c1be3b14ee44e9cd926c4fe23055bc74bbc9725b01ebee78a1d1cb2b266f4" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" "62408b3adcd05f887b6357e5bd9221652984a389e9b015f87bbc596aba62ba48" "7e376fb329a0e46a04e8285b0e45199a083f98c69b0e1039ec1cb1d366e66e9c" "3a69621a68c2d3550a4c777ffc000e1ea66f5bc2f61112814c591e1bda3f5704" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "4e63466756c7dbd78b49ce86f5f0954b92bf70b30c01c494b37c586639fa3f6f" "444238426b59b360fb74f46b521933f126778777c68c67841c31e0a68b0cc920" "086970da368bb95e42fd4ddac3149e84ce5f165e90dfc6ce6baceae30cf581ef" "0e0c37ee89f0213ce31205e9ae8bce1f93c9bcd81b1bcda0233061bb02c357a8" "6ffef0161169e444b514a0f7f0cb7eac09d11c396cdc99bf85360a361c427886" "dba244449b15bdc6a3236f45cec7c2cb03de0f5cf5709a01158a278da86cb69b" "869b11b64da20b6b04e9b18721e03a58e5d9f0ee3a7a91bfe7cdc2b24a828109" "19ba41b6dc0b5dd34e1b8628ad7ae47deb19f968fe8c31853d64ea8c4df252b8" "7b4d9b8a6ada8e24ac9eecd057093b0572d7008dbd912328231d0cada776065a" "ab0950f92dc5e6b667276888cb0cdbc35fd1c16f667170a62c15bd3ed5ae5c5a" "a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" "065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" "868f73b5cf78e72ca2402e1d48675e49cc9a9619c5544af7bf216515d22b58e7" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "bce3ae31774e626dce97ed6d7781b4c147c990e48a35baedf67e185ebc544a56" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "9deeab438d1d798c26d41c759d74a2406802427ff6acb7dec8cec961bcb4e7d5" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" "5e2dc1360a92bb73dafa11c46ba0f30fa5f49df887a8ede4e3533c3ab6270e08" "ecb9fe1d5b165a35499191a909b2b5710a52935614058b327a39bfbbb07c7dc8" "8abee8a14e028101f90a2d314f1b03bed1cde7fd3f1eb945ada6ffc15b1d7d65" "b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" "72c7c8b431179cbcfcea4193234be6a0e6916d04c44405fc87905ae16bed422a" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "ffac21ab88a0f4603969a24b96993bd73a13fe0989db7ed76d94c305891fad64" "ec3e6185729e1a22d4af9163a689643b168e1597f114e1cec31bdb1ab05aa539" "45a8b89e995faa5c69aa79920acff5d7cb14978fbf140cdd53621b09d782edcf" "69e7e7069edb56f9ed08c28ccf0db7af8f30134cab6415d5cf38ec5967348a3c" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "732ccca2e9170bcfd4ee5070159923f0c811e52b019106b1fc5eaa043dff4030" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "0961d780bd14561c505986166d167606239af3e2c3117265c9377e9b8204bf96" "3e34e9bf818cf6301fcabae2005bba8e61b1caba97d95509c8da78cff5f2ec8e" "b67b2279fa90e4098aa126d8356931c7a76921001ddff0a8d4a0541080dee5f6" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "604648621aebec024d47c352b8e3411e63bdb384367c3dd2e8db39df81b475f5" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "83db918b06f0b1df1153f21c0d47250556c7ffb5b5e6906d21749f41737babb7" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "bea5fd3610ed135e6ecc35bf8a9c27277d50336455dbdd2969809f7d7c1f7d79" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "ee4dcfcb646d4ad11fe1bd90ed111e3e59a78703325fdef347b50a39ccba13d7" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "551596f9165514c617c99ad6ce13196d6e7caa7035cea92a0e143dbe7b28be0e" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(emms-mode-line-icon-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(ensime-sem-high-faces
   (quote
    ((var :foreground "#9876aa" :underline
          (:style wave :color "yellow"))
     (val :foreground "#9876aa")
     (varField :slant italic)
     (valField :foreground "#9876aa" :slant italic)
     (functionCall :foreground "#a9b7c6")
     (implicitConversion :underline
                         (:color "#808080"))
     (implicitParams :underline
                     (:color "#808080"))
     (operator :foreground "#cc7832")
     (param :foreground "#a9b7c6")
     (class :foreground "#4e807d")
     (trait :foreground "#4e807d" :slant italic)
     (object :foreground "#6897bb" :slant italic)
     (package :foreground "#cc7832")
     (deprecated :strike-through "#a9b7c6"))))
 '(evil-emacs-state-cursor (quote ("#D50000" hbar)))
 '(evil-insert-state-cursor (quote ("#D50000" bar)))
 '(evil-normal-state-cursor (quote ("#F57F17" box)))
 '(evil-visual-state-cursor (quote ("#66BB6A" box)))
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#3E4451" t)
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(foreground-color "#cccccc")
 '(frame-background-mode (quote dark))
 '(frame-brackground-mode (quote dark))
 '(fringe-mode 4 nil (fringe))
 '(gnus-logo-colors (quote ("#0d7b72" "#adadad")) t)
 '(gnus-mode-line-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #358d8d\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };")) t)
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (quote
    ("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors (quote (("#F8BBD0" . 0) ("#FAFAFA" . 100))))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors
   (quote
    ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
 '(hl-sexp-background-color "#efebe9")
 '(linum-format " %7i ")
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(notmuch-search-line-faces
   (quote
    (("unread" :foreground "#aeee00")
     ("flagged" :foreground "#0a9dff")
     ("deleted" :foreground "#ff2c4b" :bold t))))
 '(nrepl-message-colors
   (quote
    ("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c")))
 '(org-src-block-faces (quote (("emacs-lisp" (:background "#F0FFF0")))))
 '(package-selected-packages
   (quote
    (cherry-blossom-theme hemera-theme hemisu-theme heroku-theme jazz-theme auctex goto-chg yaml-mode dumb-jump org-journal powerline majapahit-theme browse-kill-ring nlinum move-text mode-icons symon expand-region restclient drag-stuff zencoding-mode rainbow-delimiters rainbow-mode highlight-symbol highlight-numbers diff-hl vlf neotree ztree recentf-ext clean-aindent-mode duplicate-thing volatile-highlights undo-tree smartparens ws-butler x86-lookup nasm-mode iasm-mode py-autopep8 elpy xref-js2 js2-refactor js2-mode web-mode ac-php glsl-mode function-args yasnippet-snippets helm-themes helm-gtags flycheck-tip flycheck-irony company-web company-tern company-php company-lua company-jedi company-irony company-c-headers company-anaconda)))
 '(pdf-view-midnight-colors (quote ("#232333" . "#c7c7c7")))
 '(pos-tip-background-color "#ffffff")
 '(pos-tip-foreground-color "#78909C")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(red "#ffffff")
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments "-I/home/alexhg/Documents/gits/skeletongl/src/" "-I/home/alex/Documents/gits/skeletongl/src/skeletonGL/")
     (company-clang-arguments "-I/home/alex/Documents/projects/current/SGL_ALPHA/src/" "-I/home/alex/Documents/projects/current/SGL_ALPHA/src/skeletonGL/"))))
 '(save-place nil)
 '(save-place-mode nil)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(tabbar-background-color "#ffffff")
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map
   (quote
    ((20 . "#437c7c")
     (40 . "#336c6c")
     (60 . "#205070")
     (80 . "#2f4070")
     (100 . "#1f3060")
     (120 . "#0f2050")
     (140 . "#a080a0")
     (160 . "#806080")
     (180 . "#704d70")
     (200 . "#603a60")
     (220 . "#502750")
     (240 . "#401440")
     (260 . "#6c1f1c")
     (280 . "#935f5c")
     (300 . "#834744")
     (320 . "#732f2c")
     (340 . "#6b400c")
     (360 . "#23733c"))))
 '(vc-annotate-very-old-color "#23733c")
 '(when
      (or
       (not
        (boundp
         (quote ansi-term-color-vector)))
       (not
        (facep
         (aref ansi-term-color-vector 0)))))
 '(xterm-color-names
   ["#303030" "#D66F84" "#D79887" "#D49A8A" "#94B1A3" "#A8938C" "#989584" "#BAB2A9"])
 '(xterm-color-names-bright
   ["#3A3A3A" "#E47386" "#CC816B" "#769188" "#7D6F6A" "#9C8772" "#BAB2A9"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
