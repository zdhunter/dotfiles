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
(require 'c-config)
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
 '(custom-enabled-themes (quote (hemisu-dark)))
 '(custom-safe-themes
 (quote
  ("7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "2f4f50d98073c01038b518066840638455657dc91dd1a225286d573926f36914" "04589c18c2087cd6f12c01807eed0bdaa63983787025c209b89c779c61c3a4c4" "36282815a2eaab9ba67d7653cf23b1a4e230e4907c7f110eebf3cdf1445d8370" "e583a7d8014bfbf602848b1b4d4643e52232756da90b2cebaa6dbe25027ee765" "a9ca5a377481001746ad8f5b416468c0cefa198e1c07f009ee0fc6c0df79224b" "264b639ee1d01cd81f6ab49a63b6354d902c7f7ed17ecf6e8c2bd5eb6d8ca09c" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "808b47c5c5583b5e439d8532da736b5e6b0552f6e89f8dafaab5631aace601dd" "1025e775a6d93981454680ddef169b6c51cc14cea8cb02d1872f9d3ce7a1da66" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "04790c9929eacf32d508b84d34e80ad2ee233f13f17767190531b8b350b9ef22" "428bdd4b98d4d58cd094e7e074c4a82151ad4a77b9c9e30d75c56dc5a07f26c5" "f5f3a6fb685fe5e1587bafd07db3bf25a0655f3ddc579ed9d331b6b19827ea46" "b0c5c6cc59d530d3f6fbcfa67801993669ce062dda1435014f74cafac7d86246" "542e6fee85eea8e47243a5647358c344111aa9c04510394720a3108803c8ddd1" "304c39b190267e9b863c0cf9c989da76dcfbb0649cbcb89592e7c5c08348fce9" "3a5f04a517096b08b08ef39db6d12bd55c04ed3d43b344cf8bd855bde6d3a1ae" "5a21604c4b1f2df98e67cda2347b8f42dc9ce471a48164fcb8d3d52c3a0d10be" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "7d3ee5cee22625af0a2acd2349242f5c1951f481d0f32c43afab45dd0c92477a" "1ce99f3eacdcb4d53e26274cb491f5ef4b9c623ebd7e5b2b380a91cf9c1429e9" "3e335d794ed3030fefd0dbd7ff2d3555e29481fe4bbb0106ea11c660d6001767" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" "c3d4af771cbe0501d5a865656802788a9a0ff9cf10a7df704ec8b8ef69017c68" "e3bf16af35586816b824bea36188215319b1cceb208d3518700d876c4c1a9cc7" "0309f5d28c57c327283e579abd9059fe7b4b32e2599879cd78846e2368f8e6e8" "5e5f7e60dfc8d73b75afe6ee9ca3a6f981ffabd9a31d82238a4d9e76145987bb" "4980e5ddaae985e4bae004280bd343721271ebb28f22b3e3b2427443e748cd3f" "71b9b4c5d2a5126586d204e20c3fb4797f70d3d057a0c8b03bac2c51893007a2" "889a93331bc657c0f05a04b8665b78b3c94a12ca76771342cee27d6605abcd0e" "ce585b387d84fc4bbb02b8766bfe82607f891e25602ec3550db858e09c10eb7d" "e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "663a653b805b97978c624687b67861f80dddceffc3ae434aa4c60bd22d12e70b" "1012cf33e0152751078e9529a915da52ec742dabf22143530e86451ae8378c1a" "30fe7e72186c728bd7c3e1b8d67bc10b846119c45a0f35c972ed427c45bacc19" "e4859645a914c748b966a1fe53244ff9e043e00f21c5989c4a664d649838f6a3" "b24ee45778296405489a56484d90901150b32e99c6dc48394184a745491d92f9" "84e39ed4c552b75e1cb09458c140a9b025598002533456b4c27db31d27e1e0d7" "ef1e992ef341e86397b39ee6b41c1368e1b33d45b0848feac6a8e8d5753daa67" "a632c5ce9bd5bcdbb7e22bf278d802711074413fd5f681f39f21d340064ff292" "5a17bc57f77719cf3bf1d260c88364d87e4632cc506c1c9a5998a684cca1fa07" "1a5c1be3b14ee44e9cd926c4fe23055bc74bbc9725b01ebee78a1d1cb2b266f4" "8288b9b453cdd2398339a9fd0cec94105bc5ca79b86695bd7bf0381b1fbe8147" "62408b3adcd05f887b6357e5bd9221652984a389e9b015f87bbc596aba62ba48" "7e376fb329a0e46a04e8285b0e45199a083f98c69b0e1039ec1cb1d366e66e9c" "3a69621a68c2d3550a4c777ffc000e1ea66f5bc2f61112814c591e1bda3f5704" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "4e63466756c7dbd78b49ce86f5f0954b92bf70b30c01c494b37c586639fa3f6f" "444238426b59b360fb74f46b521933f126778777c68c67841c31e0a68b0cc920" "086970da368bb95e42fd4ddac3149e84ce5f165e90dfc6ce6baceae30cf581ef" "0e0c37ee89f0213ce31205e9ae8bce1f93c9bcd81b1bcda0233061bb02c357a8" "6ffef0161169e444b514a0f7f0cb7eac09d11c396cdc99bf85360a361c427886" "dba244449b15bdc6a3236f45cec7c2cb03de0f5cf5709a01158a278da86cb69b" "869b11b64da20b6b04e9b18721e03a58e5d9f0ee3a7a91bfe7cdc2b24a828109" "19ba41b6dc0b5dd34e1b8628ad7ae47deb19f968fe8c31853d64ea8c4df252b8" "7b4d9b8a6ada8e24ac9eecd057093b0572d7008dbd912328231d0cada776065a" "ab0950f92dc5e6b667276888cb0cdbc35fd1c16f667170a62c15bd3ed5ae5c5a" "a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" "065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" "868f73b5cf78e72ca2402e1d48675e49cc9a9619c5544af7bf216515d22b58e7" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "bce3ae31774e626dce97ed6d7781b4c147c990e48a35baedf67e185ebc544a56" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "9deeab438d1d798c26d41c759d74a2406802427ff6acb7dec8cec961bcb4e7d5" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "c1390663960169cd92f58aad44ba3253227d8f715c026438303c09b9fb66cdfb" "5e2dc1360a92bb73dafa11c46ba0f30fa5f49df887a8ede4e3533c3ab6270e08" "ecb9fe1d5b165a35499191a909b2b5710a52935614058b327a39bfbbb07c7dc8" "8abee8a14e028101f90a2d314f1b03bed1cde7fd3f1eb945ada6ffc15b1d7d65" "b9b1a8d2ec1d5c17700e1a09256f33c2520b26f49980ed9e217e444c381279a9" "72c7c8b431179cbcfcea4193234be6a0e6916d04c44405fc87905ae16bed422a" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "ffac21ab88a0f4603969a24b96993bd73a13fe0989db7ed76d94c305891fad64" "ec3e6185729e1a22d4af9163a689643b168e1597f114e1cec31bdb1ab05aa539" "45a8b89e995faa5c69aa79920acff5d7cb14978fbf140cdd53621b09d782edcf" "69e7e7069edb56f9ed08c28ccf0db7af8f30134cab6415d5cf38ec5967348a3c" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "732ccca2e9170bcfd4ee5070159923f0c811e52b019106b1fc5eaa043dff4030" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "0961d780bd14561c505986166d167606239af3e2c3117265c9377e9b8204bf96" "3e34e9bf818cf6301fcabae2005bba8e61b1caba97d95509c8da78cff5f2ec8e" "b67b2279fa90e4098aa126d8356931c7a76921001ddff0a8d4a0541080dee5f6" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "604648621aebec024d47c352b8e3411e63bdb384367c3dd2e8db39df81b475f5" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "6dd2b995238b4943431af56c5c9c0c825258c2de87b6c936ee88d6bb1e577cb9" "e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "83db918b06f0b1df1153f21c0d47250556c7ffb5b5e6906d21749f41737babb7" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "bea5fd3610ed135e6ecc35bf8a9c27277d50336455dbdd2969809f7d7c1f7d79" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "ee4dcfcb646d4ad11fe1bd90ed111e3e59a78703325fdef347b50a39ccba13d7" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "551596f9165514c617c99ad6ce13196d6e7caa7035cea92a0e143dbe7b28be0e" default)))
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
 '(evil-emacs-state-cursor (quote ("#D50000" hbar)))
 '(evil-insert-state-cursor (quote ("#D50000" bar)))
 '(evil-normal-state-cursor (quote ("#F57F17" box)))
 '(evil-visual-state-cursor (quote ("#66BB6A" box)))
 '(fci-rule-character-color "#d9d9d9")
 '(fci-rule-color "#3E4451")
 '(foreground-color "#cccccc")
 '(fringe-mode 4 nil (fringe))
 '(gnus-logo-colors (quote ("#0d7b72" "#adadad")))
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
\"###########.######\" };")))
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
 (quote
  ("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315")))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors (quote (("#F8BBD0" . 0) ("#FAFAFA" . 100))))
 '(hl-paren-colors
 (quote
  ("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11")))
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
 '(vc-annotate-very-old-color "#23733c"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
