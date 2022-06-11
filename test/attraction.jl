@time @testset "attraction.jl" begin
    methane = molecule("methane.xyz")
    basis = buildbasis(methane)
    @test attraction(basis, methane) == [-33.65274107343551 -8.128483186582468 -4.302248061220742e-21 0.0 -2.3395627422600606e-21 -3.4425727128838974 -3.4423838127848048 -3.442376404838094 -3.4424634522019817; -8.128483186582468 -7.846737221379609 4.219867102568401e-21 0.0 -1.119237077081978e-21 -4.79382406264269 -4.793670170629788 -4.7936641354365905 -4.793735051582429; -4.302248061220742e-21 4.219867102568401e-21 -5.148220575651905 0.0 2.6630060539633543e-42 0.42467567253014044 -1.6326583088487174 -0.7572395638430469 1.9654157862614763; 0.0 0.0 0.0 -5.148220575651905 0.0 -1.8707161038007107 -0.5291502469186976 1.7580585175794305 0.6419347128998832; -2.3395627422600606e-21 -1.119237077081978e-21 2.6630060539633543e-42 0.0 -5.148220575651905 1.3347769187166876 -1.5861870562726248 1.3406644617589194 -1.0893213729460038; -3.4425727128838974 -4.79382406264269 0.42467567253014044 -1.870716103800711 1.3347769187166876 -4.615301624567201 -2.6795202055027674 -2.679474986263546 -2.6796317899448994; -3.4423838127848048 -4.79367017062979 -1.632658308848718 -0.5291502469186975 -1.5861870562726248 -2.679520205502768 -4.615179534172651 -2.6794528751610276 -2.6794685962180727; -3.4423764048380936 -4.7936641354365905 -0.7572395638430469 1.7580585175794308 1.3406644617589194 -2.679474986263546 -2.6794528751610276 -4.615174746193909 -2.6795497777543855; -3.4424634522019817 -4.793735051582428 1.965415786261476 0.6419347128998832 -1.0893213729460038 -2.6796317899448994 -2.679468596218072 -2.6795497777543855 -4.6152310072574805;;; -0.9107389698526694 -0.3795871839543028 0.010708951446337912 -0.04717342956362168 0.03365877100769186 -0.1992626319340502 -0.16952044433007313 -0.1695194191663955 -0.16952544011072102; -0.37958718395430274 -0.9032122062813566 0.05863419606223139 -0.25828636275189426 0.18429021630811865 -0.8337147753125443 -0.5495603117904125 -0.5495545381128815 -0.5495760942118206; 0.010708951446337916 0.05863419606223139 -0.6384475869485977 0.034151804587261234 -0.02436769555946219 0.14209301980379188 -0.169358869599552 -0.06271002385670235 0.26898441827177416; -0.04717342956362169 -0.2582863627518942 0.034151804587261234 -0.7811349940684297 0.10734083312098289 -0.6259263658804498 -0.1945949930362779 0.08404740559235227 -0.05193199698996576; 0.033658771007691865 0.18429021630811865 -0.02436769555946219 0.10734083312098289 -0.7072835934612206 0.4466054813426914 -0.10038899970305869 0.25617424897466046 -0.039854863453873984; -0.19926263193405017 -0.8337147753125443 0.14209301980379188 -0.6259263658804497 0.4466054813426913 -1.2266137219491882 -0.4318888250002644 -0.4318765476042394 -0.43191569787886486; -0.16952044433007313 -0.5495603117904125 -0.16935886959955201 -0.1945949930362779 -0.10038899970305869 -0.4318888250002644 -0.5367469302894173 -0.3033106457503562 -0.30331867982304805; -0.16951941916639557 -0.5495545381128816 -0.06271002385670235 0.08404740559235227 0.25617424897466046 -0.4318765476042393 -0.3033106457503562 -0.5367384931715369 -0.3033261028397706; -0.16952544011072102 -0.5495760942118206 0.2689844182717742 -0.05193199698996575 -0.039854863453873984 -0.43191569787886486 -0.3033186798230481 -0.3033261028397706 -0.5367653976154632;;; -0.9106990014859211 -0.3795707017035383 -0.04116693582330486 -0.013342347347099678 -0.03999517865766886 -0.16952242674506915 -0.19924275184121823 -0.16951345426078793 -0.16951720549577387; -0.37957070170353824 -0.9031910419934925 -0.225414204973128 -0.07305752929075675 -0.21899811631773003 -0.5495643535053908 -0.8336893953594898 -0.5495511215613695 -0.5495552421471761; -0.04116693582330486 -0.22541420497312803 -0.7452693442854489 -0.037138099480749615 -0.11132560748853085 -0.0618381841731841 -0.546271580829469 -0.2058207142440771 0.12586284080675023; -0.013342347347099678 -0.07305752929075675 -0.037138099480749615 -0.642718766662381 -0.03608101730267709 -0.2647062269846173 -0.17704852283783343 0.1773658655497961 0.041393980362606234; -0.03999517865766886 -0.21899811631773003 -0.11132560748853085 -0.03608101730267709 -0.738839064626213 0.05226598036943966 -0.5307227519837265 0.052987827167382796 -0.24304342855010574; -0.16952242674506915 -0.5495643535053907 -0.0618381841731841 -0.2647062269846174 0.05226598036943966 -0.5367469302894173 -0.4318888250002644 -0.30330968752313736 -0.30332647552321096; -0.19924275184121823 -0.8336893953594897 -0.546271580829469 -0.17704852283783346 -0.5307227519837265 -0.4318888250002644 -1.2266137219491882 -0.4318808816900268 -0.4318804369555949; -0.16951345426078795 -0.5495511215613695 -0.2058207142440771 0.17736586554979614 0.052987827167382796 -0.30330968752313736 -0.4318808816900268 -0.5367414715847842 -0.3033196047920976; -0.16951720549577387 -0.5495552421471761 0.12586284080675023 0.041393980362606234 -0.24304342855010577 -0.303326475523211 -0.4318804369555949 -0.3033196047920975 -0.5367411659601181;;; -0.9106974341057493 -0.37957005534205596 -0.01909348092168746 0.044328714936995174 0.0338042972729354 -0.16952147935209944 -0.16951353200811492 -0.19924197224248894 -0.1695182913895787; -0.3795700553420559 -0.9031902119957118 -0.1045487815638409 0.24272751280723975 0.1850997262365567 -0.5495587383633193 -0.5495512800692732 -0.8336884000295924 -0.5495652479601771; -0.01909348092168746 -0.1045487815638409 -0.6553313996768082 0.05722843559391346 0.04364139705000036 -0.0009403389367754497 -0.2515723624579084 -0.25336494142881977 0.18676052883914027; 0.044328714936995174 0.24272751280723975 0.05722843559391346 -0.7635470894273965 -0.10132081505810173 -0.10560024362690602 0.05783024645338575 0.5882291610258157 0.20050290742444832; 0.0338042972729354 0.1850997262365567 0.04364139705000036 -0.10132081505810173 -0.7079471570314896 0.2558649180855194 -0.09997718317327248 0.44857319803175755 -0.03944410197497965; -0.16952147935209944 -0.5495587383633191 -0.0009403389367754519 -0.10560024362690602 0.2558649180855195 -0.5367384931715369 -0.30331240193726666 -0.4318765476042393 -0.30332876991772734; -0.16951353200811495 -0.5495512800692733 -0.2515723624579084 0.05783024645338576 -0.09997718317327245 -0.3033124019372667 -0.5367414715847842 -0.4318808816900268 -0.30331447615278273; -0.19924197224248894 -0.8336884000295924 -0.25336494142881977 0.5882291610258157 0.4485731980317575 -0.4318765476042394 -0.4318808816900268 -1.2266137219491882 -0.4319036342283779; -0.16951829138957872 -0.5495652479601772 0.18676052883914024 0.2005029074244483 -0.03944410197497964 -0.30332876991772734 -0.30331447615278273 -0.43190363422837796 -0.5367571073331551;;; -0.9107158517997539 -0.3795776504852406 0.04955905250252896 0.016186740923820338 -0.027467844458829306 -0.16952658669590845 -0.16951636968852066 -0.16951737785504375 -0.19925113305827521; -0.3795776504852406 -0.9031999648473785 0.27135862361672736 0.08862985703175622 -0.1503990913806498 -0.5495784318852318 -0.5495535381321905 -0.549563385460914 -0.8337000955764959; 0.04955905250252896 0.2713586236167274 -0.7967438234046095 -0.054236535892840554 0.0920358668184978 0.18846338657623457 -0.06218103647883193 0.04447021739016323 0.6576103070669037; 0.016186740923820338 0.08862985703175622 -0.054236535892840554 -0.6484019384033824 0.030060315051709995 -0.18324457047127696 -0.01980969322988889 0.2588341023478038 0.21478553628083843; -0.02746784445882931 -0.15039909138064983 0.0920358668184978 0.030060315051709995 -0.6816978558186101 0.0868302239931666 -0.26901148111261713 0.0875511940865913 -0.3644770575086145; -0.16952658669590848 -0.5495784318852318 0.1884633865762346 -0.18324457047127696 0.0868302239931666 -0.5367653976154632 -0.3033205343198842 -0.3033201143467384 -0.43191569787886486; -0.16951636968852063 -0.5495535381321905 -0.062181036478831934 -0.01980969322988889 -0.26901148111261713 -0.30332053431988426 -0.5367411659601181 -0.3033145744789922 -0.43188043695559486; -0.16951737785504375 -0.549563385460914 0.044470217390163234 0.2588341023478038 0.08755119408659132 -0.30332011434673845 -0.30331457447899224 -0.5367571073331551 -0.43190363422837796; -0.19925113305827524 -0.8337000955764958 0.6576103070669038 0.2147855362808384 -0.36447705750861453 -0.43191569787886486 -0.4318804369555949 -0.4319036342283779 -1.2266137219491882]
end