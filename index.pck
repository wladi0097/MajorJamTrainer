GDPC                                                                               @   res://.import/button.glb-fd477326b4d45960edef482071c34c25.scn   P9      �      ���eB�L�aD�|�D   res://.import/floor.jpg-7ee049b017d61027b587b573f8c11f3f.s3tc.stex  p]     �*      �J�I��·.�hO<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�!      U      -��`�0��x�5�[D   res://.import/wall.jpg-f3dc2e7903ac5ac66d4dd98181f3ed0c.s3tc.stex   ��     �*      �r�z�dqv���F��   res://default_env.tres  �      �       �V`j���ZY;��5    res://entities/Block.gd.remap   ��     )       "��w��'�$`ITܩk   res://entities/Block.gdc      x       �K+L$�7f�5a&
�   res://entities/Block.tscn   �      �      \"�2��w��pI���    res://entities/Button.gd.remap  �     *       �h��u�f@�)Dq1tO   res://entities/Button.gdc   0      m      YyC�7����rbj~g   res://entities/Button.tscn  �      �      A���ՄUp+a����;    res://entities/player.gd.remap  �     *       ��ة�i-������   res://entities/player.gdc   @      �	      ����G�M�*Y��]   res://entities/player.tscn  @      �      �Ռ���,6�J;��P   res://icon.png  @�     �      G1?��z�c��vN��   res://icon.png.import   0/      �      �����%��(#AB�   res://levels/level_01.tscn  �1      �      u���P��u/�r�    res://models/button.glb.import  PH      |      �4��V�"m$-�d1)f    res://models/button_red.materialp�      �      9��nn8�����1=(   res://models/button_red_active.material `�      �      #�b:��{��7e�JG    res://models/meshLibrary.tscn   @�      �      X��}<��p�c
"��   res://models/meshes.meshlib  �      p�      ��F���t��ˑ�57   res://project.binary0�     �      �Z!��Z-O@	�b��q    res://textures/floor.jpg.import @�     W      vK0��Q�]4Q�AB�k    res://textures/ps1Shader.shader ��     �      m4�!1�?����t˂    res://textures/wall.jpg.import  P�     R      ��"sW��M�{O��	5    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_sky = SubResource( 1 )
 GDSC                   ��������϶��   �����϶�                         
            3YYY0�  PQV�  -Y`        [gd_scene load_steps=4 format=2]

[ext_resource path="res://entities/Block.gd" type="Script" id=1]

[sub_resource type="CubeMesh" id=1]
size = Vector3( 0.2, 0.2, 0.2 )

[sub_resource type="SphereShape" id=2]
radius = 0.123829

[node name="Block" type="RigidBody"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.387144 )
collision_layer = 3
collision_mask = 0
axis_lock_angular_x = true
axis_lock_angular_y = true
axis_lock_angular_z = true
script = ExtResource( 1 )

[node name="MeshInstance" type="MeshInstance" parent="."]
mesh = SubResource( 1 )
material/0 = null

[node name="CollisionShape" type="CollisionShape" parent="."]
shape = SubResource( 2 )
      GDSC             �      ������ڶ   ��������Ҷ��   �������������������ض���   ���׶���   ������������Ӷ��   �����������Ӷ���   �����ض�   ���ӆ���   ����������¶   ��������¶��   ����¶��   ���������������������Ҷ�   �������ڶ���   ��������������������Ҷ��   �����϶�(   ������������������������������������Ҷ��   ���϶���   ���������������������Ŷ�   ���Ӷ���   ������Ӷ   �����������۶���   ���������Ҷ�   ��������۶��   ���޶���   �������������������ڶ���(   �����������������������������������Ҷ���              res://models/button_red.material   '   res://models/button_red_active.material                      �������?                         
                  '      (   	   3   
   >      ?      E      G      H      O      ]      c      i      p      �      �      �      �      �      �      �      �      �      �      �      �       3YYY;�  VY5;�  V�  W�  Y5;�  V�  W�  �  Y5;�  V�	  W�
  YY5;�  V�  ?P�  QY5;�  V�  ?P�  QYY0�  PQV�  -YY0�  P�  QV�  &�  T�  PQT�  PQ�  V�  �  T�  �  �  T�  �  �  ;�  �  PQ�  �  �  T�  P�  P�  R�  R�  QQY�  T�  T�  �  �  T�  T�  T�  P�  R�  Q�  Y0�  P�  QV�  &�  T�  PQT�  PQ�  V�  �  T�  �  T�  �  T�  T�  T�  T�  T�  P�  P�  R�  R�  QQ�  T�  T�  T�  P�  R�  QYY`   [gd_scene load_steps=4 format=2]

[ext_resource path="res://models/button.glb" type="PackedScene" id=1]
[ext_resource path="res://entities/Button.gd" type="Script" id=2]

[sub_resource type="BoxShape" id=1]
extents = Vector3( 0.173987, 0.0639894, 0.169377 )

[node name="Button" type="Spatial"]
script = ExtResource( 2 )

[node name="light" type="OmniLight" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.33615, -0.0541876, 0.0140463 )
visible = false
light_color = Color( 1, 0, 0, 1 )
omni_range = 0.6

[node name="button" parent="." instance=ExtResource( 1 )]
transform = Transform( 0.2, 0, 0, 0, 0.2, 0, 0, 0, 0.2, 0.343966, -0.255028, 0 )

[node name="buttonPressCollision" type="Area" parent="."]
collision_layer = 0
collision_mask = 2

[node name="CollisionShape" type="CollisionShape" parent="buttonPressCollision"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.346866, -0.212535, 0 )
shape = SubResource( 1 )

[connection signal="body_entered" from="buttonPressCollision" to="." method="_on_buttonPressCollision_body_entered"]
[connection signal="body_exited" from="buttonPressCollision" to="." method="_on_buttonPressCollision_body_exited"]
           GDSC   1      <   �     ������������϶��   �����׶�   ����¶��   �����׶�   ������϶   ��������Ҷ��   ����������������϶��   ���������Ҷ�   ���ƶ���   �������϶���   �����϶�   ����¶��   �������������Ӷ�   �������������������   ���������������¶���   ����¶��   ��������������������ض��   �������������Ӷ�   �������϶���   �������Ӷ���   ζ��   �������ζ���   ϶��   �������ض���   �����¶�   ����������������Ҷ��   ������������������   ��������¶��   ���������������������Ҷ�   ��������Ķ��   ���������������۶���   ����Ŷ��   ̶��   ���������Ҷ�   ���������������Ŷ���   ����׶��   ���������������϶���   �������������Ӷ�   �涶   ߶��   ��������������¶   ��������ض��   �����������������ض�   ������������������ض   �������Ķ���   ��������϶��   ��������������������Ӷ��   �����ڶ�   ����������Ķ              ����Mbp?               333333�?   	   ui_cancel         click      	   move_jump               move_forwards         move_backwards     	   move_left      
   move_right                                                   !      "   	   '   
   .      /      5      >      ?      F      V      b      q      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %     &     '     (     )   %  *   -  +   0  ,   1  -   8  .   @  /   I  0   J  1   R  2   Z  3   o  4   p  5   x  6   �  7   �  8   �  9   �  :   �  ;   �  <   3YY5;�  W�  �  Y;�  Y;�  �  Y;�  �  Y;�  �  YY;�  �  Y;�	  �  PQYY0�
  PQV�  �  T�  P�  T�  QYY0�  P�  QV�  &�  4�  �  T�  PQ�  T�  V�  �  P�  T�  T�  �  Q�  W�  T�  P�  T�  T�  �  Q�  W�  T�  T�  �5  PW�  T�  T�  R�  R�  QYY0�  P�  QV�  &�  T�  P�  QV�  �  T�  P�  T�  Q�  &�  T�  P�  QV�  &�  T�  PQ�  T�  V�  �  T�  P�  T�  Q�  Y0�  PQV�  �  �  �  &�  T�  P�  QV�  �  �	  �  �  ;�  �  PQ�  &�  T�  P�
  QV�  �  �  T�  T�   �  &�  T�  P�  QV�  �  �  T�  T�   �  &�  T�  P�  QV�  �  �  T�  T�  �  &�  T�  P�  QV�  �  �  T�  T�  �  �  �  T�!  PQ�  .�  YY0�"  P�#  QV�  �	  T�  �  �#  �  ;�$  �  PQ�  �  �  �	  T�  �$  T�  �  �	  T�   �$  T�   �  �	  �%  P�	  R�  T�&  R�	  R�  RZ�  R�  Q�  �  )�'  �(  PQV�  ;�)  V�*  �+  P�'  Q�  &�)  T�,  4�-  V�  �)  T�,  T�.  P�)  T�/  Q�  �  &�  �0  PQV�  �	  T�  �  Y`   [gd_scene load_steps=3 format=2]

[ext_resource path="res://entities/player.gd" type="Script" id=1]

[sub_resource type="CapsuleShape" id=1]
radius = 0.1
height = 0.1

[node name="Player" type="KinematicBody"]
collision_layer = 3
script = ExtResource( 1 )

[node name="CollisionShape" type="CollisionShape" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0, -0.0363573, -0.0369617 )
shape = SubResource( 1 )

[node name="Pivot" type="Spatial" parent="."]

[node name="Camera" type="Camera" parent="Pivot"]
transform = Transform( 1, 0, 0, 0, 0.989846, 0.142145, 0, -0.142145, 0.989846, 0, 0.0525992, -0.0329011 )
       GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_scene load_steps=5 format=2]

[ext_resource path="res://entities/player.tscn" type="PackedScene" id=1]
[ext_resource path="res://entities/Button.tscn" type="PackedScene" id=2]
[ext_resource path="res://models/meshes.meshlib" type="MeshLibrary" id=3]
[ext_resource path="res://entities/Block.tscn" type="PackedScene" id=4]

[node name="level_01" type="Spatial"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.371375, 0 )

[node name="GridMap" type="GridMap" parent="."]
mesh_library = ExtResource( 3 )
cell_size = Vector3( 0.5, 0.5, 0.5 )
data = {
"cells": PoolIntArray( 3, 1, 1441792, 65534, 1, 1048576, 65536, 1, 262145, 65538, 1, 262145, 131070, 1, 262145, -65536, 1, 786433, -65534, 1, 1376257, -1, 1, 1376257, -65536, 2, 786433, 3, 3, 1441792, 65534, 3, 1048576, 65536, 3, 262145, 65538, 3, 262145, 131070, 3, 262145, -65536, 3, 1376257, -65534, 3, 1376257, -1, 3, 1376257, 0, 4, 655360, 2, 4, 655360, 65534, 4, 524288, -3, 5, 786433, -1, 5, 786433, -3, 65531, 786433, -1, 65531, 786433, 0, 65532, 0, 2, 65532, 0, 65534, 65532, 0, 3, 65533, 1441792, 65534, 65533, 1048576, 65536, 65533, 262145, 65538, 65533, 262145, 131070, 65533, 262145, -65536, 65533, 1376257, -65534, 65533, 1376257, -1, 65533, 1376257, 3, 65535, 1441792, 65534, 65535, 1048576, 65536, 65535, 262145, 65538, 65535, 262145, 131070, 65535, 262145, -65536, 65535, 1376257, -65534, 65535, 1376257, -1, 65535, 1376257 )
}
__meta__ = {
"_editor_clip_": 0,
"_editor_floor_": Vector3( 0, 0, 0 )
}

[node name="KinematicBody" parent="." instance=ExtResource( 1 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.307341, 0 )

[node name="OmniLight" type="OmniLight" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.56642, 0.463413, 0.210669 )
omni_range = 3.0

[node name="Button" parent="." instance=ExtResource( 2 )]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0.00799075, 0 )

[node name="Block" parent="." instance=ExtResource( 4 )]
       RSRC                    PackedScene                                                                       resource_local_to_scene    resource_name    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    script 	   _bundled    	   Material !   res://models/button_red.material    
   local://1 y      
   local://2 �      
   local://3 �      
   ArrayMesh             Cube       	         array_data    �    �?  ��  �� �     6 8  �?  ��  ��  �    6 8  �?  ��  ��~      6 8  �?  ��  �? �     6 4  �?  ��  �?  ~    6 4  �?  ��  �?~      6 4  ��  ��  ���      6 :  ��  ��  �� �     0 8  ��  ��  ��  �    6 :  ��  ��  �?�      6 <  ��  ��  �? �     0 4  ��  ��  �?  ~    6  A�)?  �?�n,� X� �  V9S7A�)?  �?�n,�   �  V9S7A�)?  �?�n,�YY  �Y�V9S7  �?A�)?  ��  �   �8 8  �?A�)?  �� X� �   9 8  �?A�)?  ��YY  �Y��8 8  �?A�)?  ��~     �8 8A�)?  �?��&? [X �  V9�4A�)?  �?��&?   �  V9�4A�)?  �?��&?YY  �Y�V9�4  �?A�)?  �?  ~   �8 4  �?A�)?  �? [X �   9 4  �?A�)?  �?YY  �Y��8 4  �?A�)?  �?~     �8 4A�)�  �?�n,��Y  ���:S7A�)�  �?�n,� X� �  �:S7A�)�  �?�n,�   �  �:S7  ��A�)?  ���     �8 :  ��A�)?  ���Y  �� ; 8  ��A�)?  ��  �   �8 :  ��A�)?  �� X� �   ; 8A�)�  �?��&?�Y  ���:�4A�)�  �?��&? [X �  �:�4A�)�  �?��&?   �  �:�4  ��A�)?  �?�     �8 <  ��A�)?  �?�Y  �� ; 4  ��A�)?  �?  ~   �8    ��A�)?  �? [X �   ; 4      vertex_count    (         array_index_data    x    &    & 	  $ 	        
   #    #        ' "   '       !   ! %                     index_count    <      
   primitive             format    }       aabb      ��  ��  ��*  @   @   @      skeleton_aabb              blend_shape_data        
   ArrayMesh             Cube001       
         array_data    �  9�,��ٽOz*?� �  ~  6 <9�,��ٽOz*? �  ~ � 0 49�,��ٽOz*? ~    6  ��#��ٽC�1�� �    6 :��#��ٽC�1� �  ~ � 0 8��#��ٽC�1�  �  ~  6 :9�,?�ٽ�P!? �  ~ � 6 49�,?�ٽ�P!? ~    6 49�,?�ٽ�P!?      6 4�,?�ٽd�/� �  ~   6 8�,?�ٽd�/�  �    6 8�,?�ٽd�/�      6 8����=�_?�Y� ���:Q4����=�_?   � �:Q4����=�_?YY � �:Q49�,����Oz*?� �   �7 <9�,����Oz*?�Y� �� ; 49�,����Oz*?YY �  ; 49�,����Oz*? ~   �7  	���=���Y� �� �:�7	���=��   �  �:�7	���=�� Y� �  �:�7��#����C�1�� �  ~ �7 :��#����C�1��Y� ��  ; 8��#����C�1� Y� �   ; 8��#����C�1�  �   �7 :A�?��=	�?   � (9R4A�?��=	�?YY � (9R4A�?��=	�?YY  �Y(9R49�,?����P!?YY �  9 49�,?����P!? ~   �7 49�,?����P!?YY  �Y�7 49�,?����P!?     �7 4�?��=s��   � )9�7�?��=s�� Y� �  )9�7�?��=s��YY  �Y )9�7�,?���d�/� Y� �   9 8�,?���d�/�  �  ~ �7 8�,?���d�/�YY  �Y �7 8�,?���d�/�     �7 8      vertex_count    (         array_index_data    x   !   !      '               	     %   
 %        $ "   $ #   # &                    index_count    <      
   primitive             format    }       aabb    9�,��ٽC�1�9��?�Y>��?      skeleton_aabb              blend_shape_data           	   material              PackedScene          	         names "         button    Spatial    Cube 
   transform    mesh    material/0    MeshInstance    Cube001    	   variants            �?            ���=              �?                                 �?              �?              �?@����0S>�d�<               node_count             nodes     !   ��������       ����                      ����                                        ����                               conn_count              conns               node_paths              editable_instances              version       RSRC   [remap]

importer="scene"
type="PackedScene"
path="res://.import/button.glb-fd477326b4d45960edef482071c34c25.scn"

[deps]

source_file="res://models/button.glb"
dest_files=[ "res://.import/button.glb-fd477326b4d45960edef482071c34c25.scn" ]

[params]

nodes/root_type="Spatial"
nodes/root_name="Scene Root"
nodes/root_scale=1.0
nodes/custom_script=""
nodes/storage=0
materials/location=1
materials/storage=1
materials/keep_on_reimport=true
meshes/compress=true
meshes/ensure_tangents=true
meshes/storage=0
meshes/light_baking=0
meshes/lightmap_texel_size=0.1
skins/use_named_skins=true
external_files/store_in_subdir=false
animation/import=true
animation/fps=15
animation/filter_script=""
animation/storage=false
animation/keep_custom_tracks=false
animation/optimizer/enabled=true
animation/optimizer/max_linear_error=0.05
animation/optimizer/max_angular_error=0.01
animation/optimizer/max_angle=22
animation/optimizer/remove_unused_tracks=true
animation/clips/amount=0
animation/clip_1/name=""
animation/clip_1/start_frame=0
animation/clip_1/end_frame=0
animation/clip_1/loops=false
animation/clip_2/name=""
animation/clip_2/start_frame=0
animation/clip_2/end_frame=0
animation/clip_2/loops=false
animation/clip_3/name=""
animation/clip_3/start_frame=0
animation/clip_3/end_frame=0
animation/clip_3/loops=false
animation/clip_4/name=""
animation/clip_4/start_frame=0
animation/clip_4/end_frame=0
animation/clip_4/loops=false
animation/clip_5/name=""
animation/clip_5/start_frame=0
animation/clip_5/end_frame=0
animation/clip_5/loops=false
animation/clip_6/name=""
animation/clip_6/start_frame=0
animation/clip_6/end_frame=0
animation/clip_6/loops=false
animation/clip_7/name=""
animation/clip_7/start_frame=0
animation/clip_7/end_frame=0
animation/clip_7/loops=false
animation/clip_8/name=""
animation/clip_8/start_frame=0
animation/clip_8/end_frame=0
animation/clip_8/loops=false
animation/clip_9/name=""
animation/clip_9/start_frame=0
animation/clip_9/end_frame=0
animation/clip_9/loops=false
animation/clip_10/name=""
animation/clip_10/start_frame=0
animation/clip_10/end_frame=0
animation/clip_10/loops=false
animation/clip_11/name=""
animation/clip_11/start_frame=0
animation/clip_11/end_frame=0
animation/clip_11/loops=false
animation/clip_12/name=""
animation/clip_12/start_frame=0
animation/clip_12/end_frame=0
animation/clip_12/loops=false
animation/clip_13/name=""
animation/clip_13/start_frame=0
animation/clip_13/end_frame=0
animation/clip_13/loops=false
animation/clip_14/name=""
animation/clip_14/start_frame=0
animation/clip_14/end_frame=0
animation/clip_14/loops=false
animation/clip_15/name=""
animation/clip_15/start_frame=0
animation/clip_15/end_frame=0
animation/clip_15/loops=false
animation/clip_16/name=""
animation/clip_16/start_frame=0
animation/clip_16/end_frame=0
animation/clip_16/loops=false
animation/clip_17/name=""
animation/clip_17/start_frame=0
animation/clip_17/end_frame=0
animation/clip_17/loops=false
animation/clip_18/name=""
animation/clip_18/start_frame=0
animation/clip_18/end_frame=0
animation/clip_18/loops=false
animation/clip_19/name=""
animation/clip_19/start_frame=0
animation/clip_19/end_frame=0
animation/clip_19/loops=false
animation/clip_20/name=""
animation/clip_20/start_frame=0
animation/clip_20/end_frame=0
animation/clip_20/loops=false
animation/clip_21/name=""
animation/clip_21/start_frame=0
animation/clip_21/end_frame=0
animation/clip_21/loops=false
animation/clip_22/name=""
animation/clip_22/start_frame=0
animation/clip_22/end_frame=0
animation/clip_22/loops=false
animation/clip_23/name=""
animation/clip_23/start_frame=0
animation/clip_23/end_frame=0
animation/clip_23/loops=false
animation/clip_24/name=""
animation/clip_24/start_frame=0
animation/clip_24/end_frame=0
animation/clip_24/loops=false
animation/clip_25/name=""
animation/clip_25/start_frame=0
animation/clip_25/end_frame=0
animation/clip_25/loops=false
animation/clip_26/name=""
animation/clip_26/start_frame=0
animation/clip_26/end_frame=0
animation/clip_26/loops=false
animation/clip_27/name=""
animation/clip_27/start_frame=0
animation/clip_27/end_frame=0
animation/clip_27/loops=false
animation/clip_28/name=""
animation/clip_28/start_frame=0
animation/clip_28/end_frame=0
animation/clip_28/loops=false
animation/clip_29/name=""
animation/clip_29/start_frame=0
animation/clip_29/end_frame=0
animation/clip_29/loops=false
animation/clip_30/name=""
animation/clip_30/start_frame=0
animation/clip_30/end_frame=0
animation/clip_30/loops=false
animation/clip_31/name=""
animation/clip_31/start_frame=0
animation/clip_31/end_frame=0
animation/clip_31/loops=false
animation/clip_32/name=""
animation/clip_32/start_frame=0
animation/clip_32/end_frame=0
animation/clip_32/loops=false
animation/clip_33/name=""
animation/clip_33/start_frame=0
animation/clip_33/end_frame=0
animation/clip_33/loops=false
animation/clip_34/name=""
animation/clip_34/start_frame=0
animation/clip_34/end_frame=0
animation/clip_34/loops=false
animation/clip_35/name=""
animation/clip_35/start_frame=0
animation/clip_35/end_frame=0
animation/clip_35/loops=false
animation/clip_36/name=""
animation/clip_36/start_frame=0
animation/clip_36/end_frame=0
animation/clip_36/loops=false
animation/clip_37/name=""
animation/clip_37/start_frame=0
animation/clip_37/end_frame=0
animation/clip_37/loops=false
animation/clip_38/name=""
animation/clip_38/start_frame=0
animation/clip_38/end_frame=0
animation/clip_38/loops=false
animation/clip_39/name=""
animation/clip_39/start_frame=0
animation/clip_39/end_frame=0
animation/clip_39/loops=false
animation/clip_40/name=""
animation/clip_40/start_frame=0
animation/clip_40/end_frame=0
animation/clip_40/loops=false
animation/clip_41/name=""
animation/clip_41/start_frame=0
animation/clip_41/end_frame=0
animation/clip_41/loops=false
animation/clip_42/name=""
animation/clip_42/start_frame=0
animation/clip_42/end_frame=0
animation/clip_42/loops=false
animation/clip_43/name=""
animation/clip_43/start_frame=0
animation/clip_43/end_frame=0
animation/clip_43/loops=false
animation/clip_44/name=""
animation/clip_44/start_frame=0
animation/clip_44/end_frame=0
animation/clip_44/loops=false
animation/clip_45/name=""
animation/clip_45/start_frame=0
animation/clip_45/end_frame=0
animation/clip_45/loops=false
animation/clip_46/name=""
animation/clip_46/start_frame=0
animation/clip_46/end_frame=0
animation/clip_46/loops=false
animation/clip_47/name=""
animation/clip_47/start_frame=0
animation/clip_47/end_frame=0
animation/clip_47/loops=false
animation/clip_48/name=""
animation/clip_48/start_frame=0
animation/clip_48/end_frame=0
animation/clip_48/loops=false
animation/clip_49/name=""
animation/clip_49/start_frame=0
animation/clip_49/end_frame=0
animation/clip_49/loops=false
animation/clip_50/name=""
animation/clip_50/start_frame=0
animation/clip_50/end_frame=0
animation/clip_50/loops=false
animation/clip_51/name=""
animation/clip_51/start_frame=0
animation/clip_51/end_frame=0
animation/clip_51/loops=false
animation/clip_52/name=""
animation/clip_52/start_frame=0
animation/clip_52/end_frame=0
animation/clip_52/loops=false
animation/clip_53/name=""
animation/clip_53/start_frame=0
animation/clip_53/end_frame=0
animation/clip_53/loops=false
animation/clip_54/name=""
animation/clip_54/start_frame=0
animation/clip_54/end_frame=0
animation/clip_54/loops=false
animation/clip_55/name=""
animation/clip_55/start_frame=0
animation/clip_55/end_frame=0
animation/clip_55/loops=false
animation/clip_56/name=""
animation/clip_56/start_frame=0
animation/clip_56/end_frame=0
animation/clip_56/loops=false
animation/clip_57/name=""
animation/clip_57/start_frame=0
animation/clip_57/end_frame=0
animation/clip_57/loops=false
animation/clip_58/name=""
animation/clip_58/start_frame=0
animation/clip_58/end_frame=0
animation/clip_58/loops=false
animation/clip_59/name=""
animation/clip_59/start_frame=0
animation/clip_59/end_frame=0
animation/clip_59/loops=false
animation/clip_60/name=""
animation/clip_60/start_frame=0
animation/clip_60/end_frame=0
animation/clip_60/loops=false
animation/clip_61/name=""
animation/clip_61/start_frame=0
animation/clip_61/end_frame=0
animation/clip_61/loops=false
animation/clip_62/name=""
animation/clip_62/start_frame=0
animation/clip_62/end_frame=0
animation/clip_62/loops=false
animation/clip_63/name=""
animation/clip_63/start_frame=0
animation/clip_63/end_frame=0
animation/clip_63/loops=false
animation/clip_64/name=""
animation/clip_64/start_frame=0
animation/clip_64/end_frame=0
animation/clip_64/loops=false
animation/clip_65/name=""
animation/clip_65/start_frame=0
animation/clip_65/end_frame=0
animation/clip_65/loops=false
animation/clip_66/name=""
animation/clip_66/start_frame=0
animation/clip_66/end_frame=0
animation/clip_66/loops=false
animation/clip_67/name=""
animation/clip_67/start_frame=0
animation/clip_67/end_frame=0
animation/clip_67/loops=false
animation/clip_68/name=""
animation/clip_68/start_frame=0
animation/clip_68/end_frame=0
animation/clip_68/loops=false
animation/clip_69/name=""
animation/clip_69/start_frame=0
animation/clip_69/end_frame=0
animation/clip_69/loops=false
animation/clip_70/name=""
animation/clip_70/start_frame=0
animation/clip_70/end_frame=0
animation/clip_70/loops=false
animation/clip_71/name=""
animation/clip_71/start_frame=0
animation/clip_71/end_frame=0
animation/clip_71/loops=false
animation/clip_72/name=""
animation/clip_72/start_frame=0
animation/clip_72/end_frame=0
animation/clip_72/loops=false
animation/clip_73/name=""
animation/clip_73/start_frame=0
animation/clip_73/end_frame=0
animation/clip_73/loops=false
animation/clip_74/name=""
animation/clip_74/start_frame=0
animation/clip_74/end_frame=0
animation/clip_74/loops=false
animation/clip_75/name=""
animation/clip_75/start_frame=0
animation/clip_75/end_frame=0
animation/clip_75/loops=false
animation/clip_76/name=""
animation/clip_76/start_frame=0
animation/clip_76/end_frame=0
animation/clip_76/loops=false
animation/clip_77/name=""
animation/clip_77/start_frame=0
animation/clip_77/end_frame=0
animation/clip_77/loops=false
animation/clip_78/name=""
animation/clip_78/start_frame=0
animation/clip_78/end_frame=0
animation/clip_78/loops=false
animation/clip_79/name=""
animation/clip_79/start_frame=0
animation/clip_79/end_frame=0
animation/clip_79/loops=false
animation/clip_80/name=""
animation/clip_80/start_frame=0
animation/clip_80/end_frame=0
animation/clip_80/loops=false
animation/clip_81/name=""
animation/clip_81/start_frame=0
animation/clip_81/end_frame=0
animation/clip_81/loops=false
animation/clip_82/name=""
animation/clip_82/start_frame=0
animation/clip_82/end_frame=0
animation/clip_82/loops=false
animation/clip_83/name=""
animation/clip_83/start_frame=0
animation/clip_83/end_frame=0
animation/clip_83/loops=false
animation/clip_84/name=""
animation/clip_84/start_frame=0
animation/clip_84/end_frame=0
animation/clip_84/loops=false
animation/clip_85/name=""
animation/clip_85/start_frame=0
animation/clip_85/end_frame=0
animation/clip_85/loops=false
animation/clip_86/name=""
animation/clip_86/start_frame=0
animation/clip_86/end_frame=0
animation/clip_86/loops=false
animation/clip_87/name=""
animation/clip_87/start_frame=0
animation/clip_87/end_frame=0
animation/clip_87/loops=false
animation/clip_88/name=""
animation/clip_88/start_frame=0
animation/clip_88/end_frame=0
animation/clip_88/loops=false
animation/clip_89/name=""
animation/clip_89/start_frame=0
animation/clip_89/end_frame=0
animation/clip_89/loops=false
animation/clip_90/name=""
animation/clip_90/start_frame=0
animation/clip_90/end_frame=0
animation/clip_90/loops=false
animation/clip_91/name=""
animation/clip_91/start_frame=0
animation/clip_91/end_frame=0
animation/clip_91/loops=false
animation/clip_92/name=""
animation/clip_92/start_frame=0
animation/clip_92/end_frame=0
animation/clip_92/loops=false
animation/clip_93/name=""
animation/clip_93/start_frame=0
animation/clip_93/end_frame=0
animation/clip_93/loops=false
animation/clip_94/name=""
animation/clip_94/start_frame=0
animation/clip_94/end_frame=0
animation/clip_94/loops=false
animation/clip_95/name=""
animation/clip_95/start_frame=0
animation/clip_95/end_frame=0
animation/clip_95/loops=false
animation/clip_96/name=""
animation/clip_96/start_frame=0
animation/clip_96/end_frame=0
animation/clip_96/loops=false
animation/clip_97/name=""
animation/clip_97/start_frame=0
animation/clip_97/end_frame=0
animation/clip_97/loops=false
animation/clip_98/name=""
animation/clip_98/start_frame=0
animation/clip_98/end_frame=0
animation/clip_98/loops=false
animation/clip_99/name=""
animation/clip_99/start_frame=0
animation/clip_99/end_frame=0
animation/clip_99/loops=false
animation/clip_100/name=""
animation/clip_100/start_frame=0
animation/clip_100/end_frame=0
animation/clip_100/loops=false
animation/clip_101/name=""
animation/clip_101/start_frame=0
animation/clip_101/end_frame=0
animation/clip_101/loops=false
animation/clip_102/name=""
animation/clip_102/start_frame=0
animation/clip_102/end_frame=0
animation/clip_102/loops=false
animation/clip_103/name=""
animation/clip_103/start_frame=0
animation/clip_103/end_frame=0
animation/clip_103/loops=false
animation/clip_104/name=""
animation/clip_104/start_frame=0
animation/clip_104/end_frame=0
animation/clip_104/loops=false
animation/clip_105/name=""
animation/clip_105/start_frame=0
animation/clip_105/end_frame=0
animation/clip_105/loops=false
animation/clip_106/name=""
animation/clip_106/start_frame=0
animation/clip_106/end_frame=0
animation/clip_106/loops=false
animation/clip_107/name=""
animation/clip_107/start_frame=0
animation/clip_107/end_frame=0
animation/clip_107/loops=false
animation/clip_108/name=""
animation/clip_108/start_frame=0
animation/clip_108/end_frame=0
animation/clip_108/loops=false
animation/clip_109/name=""
animation/clip_109/start_frame=0
animation/clip_109/end_frame=0
animation/clip_109/loops=false
animation/clip_110/name=""
animation/clip_110/start_frame=0
animation/clip_110/end_frame=0
animation/clip_110/loops=false
animation/clip_111/name=""
animation/clip_111/start_frame=0
animation/clip_111/end_frame=0
animation/clip_111/loops=false
animation/clip_112/name=""
animation/clip_112/start_frame=0
animation/clip_112/end_frame=0
animation/clip_112/loops=false
animation/clip_113/name=""
animation/clip_113/start_frame=0
animation/clip_113/end_frame=0
animation/clip_113/loops=false
animation/clip_114/name=""
animation/clip_114/start_frame=0
animation/clip_114/end_frame=0
animation/clip_114/loops=false
animation/clip_115/name=""
animation/clip_115/start_frame=0
animation/clip_115/end_frame=0
animation/clip_115/loops=false
animation/clip_116/name=""
animation/clip_116/start_frame=0
animation/clip_116/end_frame=0
animation/clip_116/loops=false
animation/clip_117/name=""
animation/clip_117/start_frame=0
animation/clip_117/end_frame=0
animation/clip_117/loops=false
animation/clip_118/name=""
animation/clip_118/start_frame=0
animation/clip_118/end_frame=0
animation/clip_118/loops=false
animation/clip_119/name=""
animation/clip_119/start_frame=0
animation/clip_119/end_frame=0
animation/clip_119/loops=false
animation/clip_120/name=""
animation/clip_120/start_frame=0
animation/clip_120/end_frame=0
animation/clip_120/loops=false
animation/clip_121/name=""
animation/clip_121/start_frame=0
animation/clip_121/end_frame=0
animation/clip_121/loops=false
animation/clip_122/name=""
animation/clip_122/start_frame=0
animation/clip_122/end_frame=0
animation/clip_122/loops=false
animation/clip_123/name=""
animation/clip_123/start_frame=0
animation/clip_123/end_frame=0
animation/clip_123/loops=false
animation/clip_124/name=""
animation/clip_124/start_frame=0
animation/clip_124/end_frame=0
animation/clip_124/loops=false
animation/clip_125/name=""
animation/clip_125/start_frame=0
animation/clip_125/end_frame=0
animation/clip_125/loops=false
animation/clip_126/name=""
animation/clip_126/start_frame=0
animation/clip_126/end_frame=0
animation/clip_126/loops=false
animation/clip_127/name=""
animation/clip_127/start_frame=0
animation/clip_127/end_frame=0
animation/clip_127/loops=false
animation/clip_128/name=""
animation/clip_128/start_frame=0
animation/clip_128/end_frame=0
animation/clip_128/loops=false
animation/clip_129/name=""
animation/clip_129/start_frame=0
animation/clip_129/end_frame=0
animation/clip_129/loops=false
animation/clip_130/name=""
animation/clip_130/start_frame=0
animation/clip_130/end_frame=0
animation/clip_130/loops=false
animation/clip_131/name=""
animation/clip_131/start_frame=0
animation/clip_131/end_frame=0
animation/clip_131/loops=false
animation/clip_132/name=""
animation/clip_132/start_frame=0
animation/clip_132/end_frame=0
animation/clip_132/loops=false
animation/clip_133/name=""
animation/clip_133/start_frame=0
animation/clip_133/end_frame=0
animation/clip_133/loops=false
animation/clip_134/name=""
animation/clip_134/start_frame=0
animation/clip_134/end_frame=0
animation/clip_134/loops=false
animation/clip_135/name=""
animation/clip_135/start_frame=0
animation/clip_135/end_frame=0
animation/clip_135/loops=false
animation/clip_136/name=""
animation/clip_136/start_frame=0
animation/clip_136/end_frame=0
animation/clip_136/loops=false
animation/clip_137/name=""
animation/clip_137/start_frame=0
animation/clip_137/end_frame=0
animation/clip_137/loops=false
animation/clip_138/name=""
animation/clip_138/start_frame=0
animation/clip_138/end_frame=0
animation/clip_138/loops=false
animation/clip_139/name=""
animation/clip_139/start_frame=0
animation/clip_139/end_frame=0
animation/clip_139/loops=false
animation/clip_140/name=""
animation/clip_140/start_frame=0
animation/clip_140/end_frame=0
animation/clip_140/loops=false
animation/clip_141/name=""
animation/clip_141/start_frame=0
animation/clip_141/end_frame=0
animation/clip_141/loops=false
animation/clip_142/name=""
animation/clip_142/start_frame=0
animation/clip_142/end_frame=0
animation/clip_142/loops=false
animation/clip_143/name=""
animation/clip_143/start_frame=0
animation/clip_143/end_frame=0
animation/clip_143/loops=false
animation/clip_144/name=""
animation/clip_144/start_frame=0
animation/clip_144/end_frame=0
animation/clip_144/loops=false
animation/clip_145/name=""
animation/clip_145/start_frame=0
animation/clip_145/end_frame=0
animation/clip_145/loops=false
animation/clip_146/name=""
animation/clip_146/start_frame=0
animation/clip_146/end_frame=0
animation/clip_146/loops=false
animation/clip_147/name=""
animation/clip_147/start_frame=0
animation/clip_147/end_frame=0
animation/clip_147/loops=false
animation/clip_148/name=""
animation/clip_148/start_frame=0
animation/clip_148/end_frame=0
animation/clip_148/loops=false
animation/clip_149/name=""
animation/clip_149/start_frame=0
animation/clip_149/end_frame=0
animation/clip_149/loops=false
animation/clip_150/name=""
animation/clip_150/start_frame=0
animation/clip_150/end_frame=0
animation/clip_150/loops=false
animation/clip_151/name=""
animation/clip_151/start_frame=0
animation/clip_151/end_frame=0
animation/clip_151/loops=false
animation/clip_152/name=""
animation/clip_152/start_frame=0
animation/clip_152/end_frame=0
animation/clip_152/loops=false
animation/clip_153/name=""
animation/clip_153/start_frame=0
animation/clip_153/end_frame=0
animation/clip_153/loops=false
animation/clip_154/name=""
animation/clip_154/start_frame=0
animation/clip_154/end_frame=0
animation/clip_154/loops=false
animation/clip_155/name=""
animation/clip_155/start_frame=0
animation/clip_155/end_frame=0
animation/clip_155/loops=false
animation/clip_156/name=""
animation/clip_156/start_frame=0
animation/clip_156/end_frame=0
animation/clip_156/loops=false
animation/clip_157/name=""
animation/clip_157/start_frame=0
animation/clip_157/end_frame=0
animation/clip_157/loops=false
animation/clip_158/name=""
animation/clip_158/start_frame=0
animation/clip_158/end_frame=0
animation/clip_158/loops=false
animation/clip_159/name=""
animation/clip_159/start_frame=0
animation/clip_159/end_frame=0
animation/clip_159/loops=false
animation/clip_160/name=""
animation/clip_160/start_frame=0
animation/clip_160/end_frame=0
animation/clip_160/loops=false
animation/clip_161/name=""
animation/clip_161/start_frame=0
animation/clip_161/end_frame=0
animation/clip_161/loops=false
animation/clip_162/name=""
animation/clip_162/start_frame=0
animation/clip_162/end_frame=0
animation/clip_162/loops=false
animation/clip_163/name=""
animation/clip_163/start_frame=0
animation/clip_163/end_frame=0
animation/clip_163/loops=false
animation/clip_164/name=""
animation/clip_164/start_frame=0
animation/clip_164/end_frame=0
animation/clip_164/loops=false
animation/clip_165/name=""
animation/clip_165/start_frame=0
animation/clip_165/end_frame=0
animation/clip_165/loops=false
animation/clip_166/name=""
animation/clip_166/start_frame=0
animation/clip_166/end_frame=0
animation/clip_166/loops=false
animation/clip_167/name=""
animation/clip_167/start_frame=0
animation/clip_167/end_frame=0
animation/clip_167/loops=false
animation/clip_168/name=""
animation/clip_168/start_frame=0
animation/clip_168/end_frame=0
animation/clip_168/loops=false
animation/clip_169/name=""
animation/clip_169/start_frame=0
animation/clip_169/end_frame=0
animation/clip_169/loops=false
animation/clip_170/name=""
animation/clip_170/start_frame=0
animation/clip_170/end_frame=0
animation/clip_170/loops=false
animation/clip_171/name=""
animation/clip_171/start_frame=0
animation/clip_171/end_frame=0
animation/clip_171/loops=false
animation/clip_172/name=""
animation/clip_172/start_frame=0
animation/clip_172/end_frame=0
animation/clip_172/loops=false
animation/clip_173/name=""
animation/clip_173/start_frame=0
animation/clip_173/end_frame=0
animation/clip_173/loops=false
animation/clip_174/name=""
animation/clip_174/start_frame=0
animation/clip_174/end_frame=0
animation/clip_174/loops=false
animation/clip_175/name=""
animation/clip_175/start_frame=0
animation/clip_175/end_frame=0
animation/clip_175/loops=false
animation/clip_176/name=""
animation/clip_176/start_frame=0
animation/clip_176/end_frame=0
animation/clip_176/loops=false
animation/clip_177/name=""
animation/clip_177/start_frame=0
animation/clip_177/end_frame=0
animation/clip_177/loops=false
animation/clip_178/name=""
animation/clip_178/start_frame=0
animation/clip_178/end_frame=0
animation/clip_178/loops=false
animation/clip_179/name=""
animation/clip_179/start_frame=0
animation/clip_179/end_frame=0
animation/clip_179/loops=false
animation/clip_180/name=""
animation/clip_180/start_frame=0
animation/clip_180/end_frame=0
animation/clip_180/loops=false
animation/clip_181/name=""
animation/clip_181/start_frame=0
animation/clip_181/end_frame=0
animation/clip_181/loops=false
animation/clip_182/name=""
animation/clip_182/start_frame=0
animation/clip_182/end_frame=0
animation/clip_182/loops=false
animation/clip_183/name=""
animation/clip_183/start_frame=0
animation/clip_183/end_frame=0
animation/clip_183/loops=false
animation/clip_184/name=""
animation/clip_184/start_frame=0
animation/clip_184/end_frame=0
animation/clip_184/loops=false
animation/clip_185/name=""
animation/clip_185/start_frame=0
animation/clip_185/end_frame=0
animation/clip_185/loops=false
animation/clip_186/name=""
animation/clip_186/start_frame=0
animation/clip_186/end_frame=0
animation/clip_186/loops=false
animation/clip_187/name=""
animation/clip_187/start_frame=0
animation/clip_187/end_frame=0
animation/clip_187/loops=false
animation/clip_188/name=""
animation/clip_188/start_frame=0
animation/clip_188/end_frame=0
animation/clip_188/loops=false
animation/clip_189/name=""
animation/clip_189/start_frame=0
animation/clip_189/end_frame=0
animation/clip_189/loops=false
animation/clip_190/name=""
animation/clip_190/start_frame=0
animation/clip_190/end_frame=0
animation/clip_190/loops=false
animation/clip_191/name=""
animation/clip_191/start_frame=0
animation/clip_191/end_frame=0
animation/clip_191/loops=false
animation/clip_192/name=""
animation/clip_192/start_frame=0
animation/clip_192/end_frame=0
animation/clip_192/loops=false
animation/clip_193/name=""
animation/clip_193/start_frame=0
animation/clip_193/end_frame=0
animation/clip_193/loops=false
animation/clip_194/name=""
animation/clip_194/start_frame=0
animation/clip_194/end_frame=0
animation/clip_194/loops=false
animation/clip_195/name=""
animation/clip_195/start_frame=0
animation/clip_195/end_frame=0
animation/clip_195/loops=false
animation/clip_196/name=""
animation/clip_196/start_frame=0
animation/clip_196/end_frame=0
animation/clip_196/loops=false
animation/clip_197/name=""
animation/clip_197/start_frame=0
animation/clip_197/end_frame=0
animation/clip_197/loops=false
animation/clip_198/name=""
animation/clip_198/start_frame=0
animation/clip_198/end_frame=0
animation/clip_198/loops=false
animation/clip_199/name=""
animation/clip_199/start_frame=0
animation/clip_199/end_frame=0
animation/clip_199/loops=false
animation/clip_200/name=""
animation/clip_200/start_frame=0
animation/clip_200/end_frame=0
animation/clip_200/loops=false
animation/clip_201/name=""
animation/clip_201/start_frame=0
animation/clip_201/end_frame=0
animation/clip_201/loops=false
animation/clip_202/name=""
animation/clip_202/start_frame=0
animation/clip_202/end_frame=0
animation/clip_202/loops=false
animation/clip_203/name=""
animation/clip_203/start_frame=0
animation/clip_203/end_frame=0
animation/clip_203/loops=false
animation/clip_204/name=""
animation/clip_204/start_frame=0
animation/clip_204/end_frame=0
animation/clip_204/loops=false
animation/clip_205/name=""
animation/clip_205/start_frame=0
animation/clip_205/end_frame=0
animation/clip_205/loops=false
animation/clip_206/name=""
animation/clip_206/start_frame=0
animation/clip_206/end_frame=0
animation/clip_206/loops=false
animation/clip_207/name=""
animation/clip_207/start_frame=0
animation/clip_207/end_frame=0
animation/clip_207/loops=false
animation/clip_208/name=""
animation/clip_208/start_frame=0
animation/clip_208/end_frame=0
animation/clip_208/loops=false
animation/clip_209/name=""
animation/clip_209/start_frame=0
animation/clip_209/end_frame=0
animation/clip_209/loops=false
animation/clip_210/name=""
animation/clip_210/start_frame=0
animation/clip_210/end_frame=0
animation/clip_210/loops=false
animation/clip_211/name=""
animation/clip_211/start_frame=0
animation/clip_211/end_frame=0
animation/clip_211/loops=false
animation/clip_212/name=""
animation/clip_212/start_frame=0
animation/clip_212/end_frame=0
animation/clip_212/loops=false
animation/clip_213/name=""
animation/clip_213/start_frame=0
animation/clip_213/end_frame=0
animation/clip_213/loops=false
animation/clip_214/name=""
animation/clip_214/start_frame=0
animation/clip_214/end_frame=0
animation/clip_214/loops=false
animation/clip_215/name=""
animation/clip_215/start_frame=0
animation/clip_215/end_frame=0
animation/clip_215/loops=false
animation/clip_216/name=""
animation/clip_216/start_frame=0
animation/clip_216/end_frame=0
animation/clip_216/loops=false
animation/clip_217/name=""
animation/clip_217/start_frame=0
animation/clip_217/end_frame=0
animation/clip_217/loops=false
animation/clip_218/name=""
animation/clip_218/start_frame=0
animation/clip_218/end_frame=0
animation/clip_218/loops=false
animation/clip_219/name=""
animation/clip_219/start_frame=0
animation/clip_219/end_frame=0
animation/clip_219/loops=false
animation/clip_220/name=""
animation/clip_220/start_frame=0
animation/clip_220/end_frame=0
animation/clip_220/loops=false
animation/clip_221/name=""
animation/clip_221/start_frame=0
animation/clip_221/end_frame=0
animation/clip_221/loops=false
animation/clip_222/name=""
animation/clip_222/start_frame=0
animation/clip_222/end_frame=0
animation/clip_222/loops=false
animation/clip_223/name=""
animation/clip_223/start_frame=0
animation/clip_223/end_frame=0
animation/clip_223/loops=false
animation/clip_224/name=""
animation/clip_224/start_frame=0
animation/clip_224/end_frame=0
animation/clip_224/loops=false
animation/clip_225/name=""
animation/clip_225/start_frame=0
animation/clip_225/end_frame=0
animation/clip_225/loops=false
animation/clip_226/name=""
animation/clip_226/start_frame=0
animation/clip_226/end_frame=0
animation/clip_226/loops=false
animation/clip_227/name=""
animation/clip_227/start_frame=0
animation/clip_227/end_frame=0
animation/clip_227/loops=false
animation/clip_228/name=""
animation/clip_228/start_frame=0
animation/clip_228/end_frame=0
animation/clip_228/loops=false
animation/clip_229/name=""
animation/clip_229/start_frame=0
animation/clip_229/end_frame=0
animation/clip_229/loops=false
animation/clip_230/name=""
animation/clip_230/start_frame=0
animation/clip_230/end_frame=0
animation/clip_230/loops=false
animation/clip_231/name=""
animation/clip_231/start_frame=0
animation/clip_231/end_frame=0
animation/clip_231/loops=false
animation/clip_232/name=""
animation/clip_232/start_frame=0
animation/clip_232/end_frame=0
animation/clip_232/loops=false
animation/clip_233/name=""
animation/clip_233/start_frame=0
animation/clip_233/end_frame=0
animation/clip_233/loops=false
animation/clip_234/name=""
animation/clip_234/start_frame=0
animation/clip_234/end_frame=0
animation/clip_234/loops=false
animation/clip_235/name=""
animation/clip_235/start_frame=0
animation/clip_235/end_frame=0
animation/clip_235/loops=false
animation/clip_236/name=""
animation/clip_236/start_frame=0
animation/clip_236/end_frame=0
animation/clip_236/loops=false
animation/clip_237/name=""
animation/clip_237/start_frame=0
animation/clip_237/end_frame=0
animation/clip_237/loops=false
animation/clip_238/name=""
animation/clip_238/start_frame=0
animation/clip_238/end_frame=0
animation/clip_238/loops=false
animation/clip_239/name=""
animation/clip_239/start_frame=0
animation/clip_239/end_frame=0
animation/clip_239/loops=false
animation/clip_240/name=""
animation/clip_240/start_frame=0
animation/clip_240/end_frame=0
animation/clip_240/loops=false
animation/clip_241/name=""
animation/clip_241/start_frame=0
animation/clip_241/end_frame=0
animation/clip_241/loops=false
animation/clip_242/name=""
animation/clip_242/start_frame=0
animation/clip_242/end_frame=0
animation/clip_242/loops=false
animation/clip_243/name=""
animation/clip_243/start_frame=0
animation/clip_243/end_frame=0
animation/clip_243/loops=false
animation/clip_244/name=""
animation/clip_244/start_frame=0
animation/clip_244/end_frame=0
animation/clip_244/loops=false
animation/clip_245/name=""
animation/clip_245/start_frame=0
animation/clip_245/end_frame=0
animation/clip_245/loops=false
animation/clip_246/name=""
animation/clip_246/start_frame=0
animation/clip_246/end_frame=0
animation/clip_246/loops=false
animation/clip_247/name=""
animation/clip_247/start_frame=0
animation/clip_247/end_frame=0
animation/clip_247/loops=false
animation/clip_248/name=""
animation/clip_248/start_frame=0
animation/clip_248/end_frame=0
animation/clip_248/loops=false
animation/clip_249/name=""
animation/clip_249/start_frame=0
animation/clip_249/end_frame=0
animation/clip_249/loops=false
animation/clip_250/name=""
animation/clip_250/start_frame=0
animation/clip_250/end_frame=0
animation/clip_250/loops=false
animation/clip_251/name=""
animation/clip_251/start_frame=0
animation/clip_251/end_frame=0
animation/clip_251/loops=false
animation/clip_252/name=""
animation/clip_252/start_frame=0
animation/clip_252/end_frame=0
animation/clip_252/loops=false
animation/clip_253/name=""
animation/clip_253/start_frame=0
animation/clip_253/end_frame=0
animation/clip_253/loops=false
animation/clip_254/name=""
animation/clip_254/start_frame=0
animation/clip_254/end_frame=0
animation/clip_254/loops=false
animation/clip_255/name=""
animation/clip_255/start_frame=0
animation/clip_255/end_frame=0
animation/clip_255/loops=false
animation/clip_256/name=""
animation/clip_256/start_frame=0
animation/clip_256/end_frame=0
animation/clip_256/loops=false
       RSCC      Y  �  (�/�`Y f�e3Pm�033333�3��~7K$y���O�F��2���6Q��$9���?�`�S T W �,���Aq�����E��!7o�{��m?.)�'�|�:����wt��.[D
�S�
���;��6ʸ�+�kx�\��.�V���{��V�����Ue}pW��6��faJ�1G���Ve�(<y,�blS�I���T$��.��6�V!�!�Z�.oƶ�"S����<��E
Mi2'��jy4�	����ɔ���o�M�W�U�<l��t��>�����bO��2Y%�Pe�ܢ)5G)L��^j.F���$2f.6:lh��[�!B�����5��M��	#c�� z��_ ���D�N��N&#�+###cmE#+�b����5�>�
�b��'+����ʩ��������)"D2##I��1P!����$=G1�����������1x���b�<ܪۘ�햝n�aoaJ���sL��bs�;�hwDD�"�w.�!Qw�[�E8"0��۫p�EG$a<����lW�� ��d[�o�t���~xi=�y�D�hBl5{�x_�d�;�/#rP""� ��φJ;�XTi�2���sc����i�
[V~�G��!�I��Ț���Pf�Q9*���0$�l'�S��y�	�8JW+[���C��H��D��]��ioot��1�@c|e]	<��'Us�RSCC              RSCC      Y  �  (�/�`Y� 6�d3`k�0�0�0h��I�-7&I#ro��-I�(��! �8�E�$�(��NR S V �"؋�P18���6��po��m��%�ęoYGP�?�����e�H�"sj�Q�aӶtG���F����O��}�e����@���V�����Ue}pW��6��faJ��F���Ve�*<y,�blS�I�
��T"��.��6�V!�!�Z�.oƶ�"S����<2���dN'��ht*u�1��)]#���q�����y�nY�(�}$8�;l�CŞ&)e�4J����ERjNR����\�HEId��^020.��p���@�5��Mb���B��� z��_ ���D�N��N&#���p8�N4��(�M^#�s��.v+�pҰ"�X����A��=L�ɀ���-"�DFF�$)cP!��l�=G5��������0����8!3Dhכ�2���M�M'�K�����1�[gAw�h:w���5|�s��GHN��"�0�᠓�p+��oٮ9�qm�����(�]Q�}��}>��& -:E��C恱<�ܡ�m"n�KDf��=Ȧ��:2&T:�̺(`Ŕ�W0�>��A��\����'��Y9�q0���2�+-�B�Q�΄��M2'U���#��k��z)�$Am ��w 3�LqS���k��*�J<:�7R�8��RSCC  [gd_scene load_steps=9 format=2]

[ext_resource path="res://textures/wall.jpg" type="Texture" id=1]
[ext_resource path="res://textures/floor.jpg" type="Texture" id=2]

[sub_resource type="SpatialMaterial" id=7]
albedo_texture = ExtResource( 1 )

[sub_resource type="QuadMesh" id=2]
material = SubResource( 7 )

[sub_resource type="ConcavePolygonShape" id=3]
data = PoolVector3Array( -0.5, -0.5, 0, -0.5, 0.5, 0, 0.5, 0.5, 0, -0.5, -0.5, 0, 0.5, 0.5, 0, 0.5, -0.5, 0 )

[sub_resource type="SpatialMaterial" id=8]
albedo_texture = ExtResource( 2 )

[sub_resource type="QuadMesh" id=5]
material = SubResource( 8 )

[sub_resource type="ConcavePolygonShape" id=6]
data = PoolVector3Array( -0.5, -0.5, 0, -0.5, 0.5, 0, 0.5, 0.5, 0, -0.5, -0.5, 0, 0.5, 0.5, 0, 0.5, -0.5, 0 )

[node name="meshLibrary" type="Spatial"]

[node name="wall" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0 )
mesh = SubResource( 2 )
material/0 = null

[node name="StaticBody" type="StaticBody" parent="wall"]

[node name="CollisionShape" type="CollisionShape" parent="wall/StaticBody"]
shape = SubResource( 3 )

[node name="floor" type="MeshInstance" parent="."]
transform = Transform( 1, 0, 0, 0, -4.37114e-08, 1, 0, -1, -4.37114e-08, 0, 0, 0 )
mesh = SubResource( 5 )
material/0 = null

[node name="StaticBody" type="StaticBody" parent="floor"]

[node name="CollisionShape" type="CollisionShape" parent="floor/StaticBody"]
shape = SubResource( 6 )
         RSRC                    MeshLibrary                                                                 U      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint 	   material    custom_aabb    flip_faces    size    margin    data    flags    storage    lossy_quality    image    item/0/name    item/0/mesh    item/0/mesh_transform    item/0/shapes    item/0/navmesh    item/0/navmesh_transform    item/0/preview    item/1/name    item/1/mesh    item/1/mesh_transform    item/1/shapes    item/1/navmesh    item/1/navmesh_transform    item/1/preview       Texture    res://textures/wall.jpg    Texture    res://textures/floor.jpg    
   local://7 �      
   local://9 �      
   local://3 	         local://10 �	         local://11 J      
   local://8 FJ         local://12 nJ      
   local://6 �J         local://13 �J         local://14 ��         res://models/meshes.meshlib ŋ         SpatialMaterial                 	   QuadMesh    =               ConcavePolygonShape    B   #         �   �       �   ?       ?   ?       �   �       ?   ?       ?   �       Image    B               width    @         height    @         format       RGBA8       mipmaps              data     @                              a^^�a^^�                                                                                                                                                                                                                                                        b_^�a^^�a^^�a^^�a^^�                                                                                                                                                                                                                                            b__�b__�a^^�a^^�b_^�da`�bb`�bb`�cca�                                                                                                                                                                                                                            c`_�b`_�a^^�c`_�c`_�da`�cb`�bb`�cca�cca�cb`�dca�                                                                                                                                                                                                                c``�b`_�b`_�b`_�c`_�da`�cca�cca�dca�dca�cb`�dca�dca�eca�eda�eca�                                                                                                                                                                                                da`�da`�da`�c`_�c``�da`�bba�bba�eca�dca�dca�cca�cca�dca�eca�eda�eca�eca�eca�                                                                                                                                                                                    bb`�da`�da`�da`�da`�da`�bba�bba�bba�dca�dca�dca�cb`�cca�cca�eca�eca�eca�eca�eca�eb`�eb`�dca�                                                                                                                                                                    cb`�bb`�bb`�ca`�ba`�da`�bb`�bba�bba�cba�dca�dca�dca�dca�cb`�dca�eca�eca�eca�eca�eb`�eca�dca�dca�dca�dc`�                                                                                                                                                        cb`�bb`�bb`�ca`�ba`�ba`�cb_�ca_�bb`�cba�cba�dca�dca�dca�cb`�cca�eca�ec`�ec`�eca�eb`�eb`�dca�cba�cba�cb`�dc`�dc`�db`�db`�                                                                                                                                        a`^�bb`�bb`�ca`�ca`�ba_�cb_�cb_�ca_�cb`�cb`�cb`�dca�cca�cb`�cb`�dca�eca�eca�db`�db`�cb`�dca�cba�dca�dc`�cb`�cb`�eca�db`�ca_�a`_�a`_�                                                                                                                            a`^�a`^�a`_�ba_�ba`�ba_�cb_�cb_�db`�cb`�cb`�cb`�cb`�dc`�cb_�cb`�dca�eca�eca�db`�db`�db`�ca`�ca_�ca_�ca_�eca�cb`�cb`�ca_�ca_�a`_�a`_�a`_�b`_�a__�b`_�                                                                                                            a`^�a`^�a`_�ba_�a`_�ca`�cb_�cb`�db`�cb`�cb`�dca�dca�dc`�cb_�cb_�cb_�cb_�db`�cb`�cb`�db`�db`�ca_�ca_�ca_�ca_�ca`�ba_�ba_�ba_�a^^�a^^�a__�a^^�a__�a__�cb`�cba�cb`�                                                                                                b`^�a`^�a`_�ba`�ba`�ba`�cb_�cb`�dc`�cc`�cb`�dca�dca�dc`�cb_�cb_�cb_�cb_�cb_�eb`�eba�eb`�eba�ca_�ca_�ca_�ca_�ca`�ba`�ba_�a`^�a__�a__�a`_�a^^�a^^�b``�bb`�cb`�cb`�cb`�cba�cb`�                                                                                    b`^�b`^�a`^�ca_�ba`�ca`�dc`�dc`�dc`�cc`�bb`�dca�dca�dca�dca�cb_�cb_�db`�eca�eb`�eba�eba�db`�db`�db`�ca_�ca_�ca_�ba_�ba_�ba_�a__�a__�a``�a__�a__�b``�bb`�bb`�dba�dba�cb`�cb`�cb`�dc`�dc`�cc`�                                                                    b`^�b`^�b`^�ca_�ca_�da`�ca_�dc`�dc`�dca�dca�dca�dca�dca�dca�dca�cb_�dc`�db`�eba�eba�eca�eca�eba�eba�da`�da`�da`�ba`�ba_�ba`�a__�a``�a__�b`_�a__�b``�cba�cba�cb`�dba�dba�cb`�cb`�cb_�dc`�dc`�dc`�cb_�ba_�                                                        b`^�b`^�b`^�ca_�ca_�da`�ca_�ca_�da`�db`�db`�dca�dca�dca�dca�dca�cb_�dc`�dc`�dca�eca�dba�eca�eba�db`�da`�ca`�da`�ba`�b`_�a`^�c`_�a``�a__�c``�a__�a__�cba�cb`�cb`�cba�dba�dba�cb`�cc`�dc`�dc`�dc`�cb_�ba_�                                                        b`^�b`_�b`_�b`_�b`_�ca_�ca_�ca_�ca_�db`�db`�db`�db`�cca�dca�dca�dc`�cb_�cc`�eca�dba�cba�eca�eca�dba�da`�da`�da`�b`_�ba`�a`^�c`_�c`_�c`_�c`_�c`_�b`_�cb`�cb`�cb`�cb`�dba�dba�dba�dca�cca�cca�dc`�cb`�cb_�                                                        ca_�b`_�b`_�b_^�b`_�b`_�ca_�ca_�ca_�db`�db`�db`�db`�cca�cca�cca�dca�eca�cb_�eca�eca�eca�dba�eca�dba�cba�dba�cba�cba�ba`�b`_�a_^�a_^�a_^�c`_�b`_�b`_�cb_�cb_�cb`�cb`�eca�cba�cba�cb`�eca�cca�ec`�db_�db_�                                                        ca_�ca_�ca_�b_^�b_^�da`�b`_�ca_�da`�da`�db`�db`�db`�cb`�cb`�cca�dca�dca�dca�dc`�bb_�dca�dba�eca�dba�cba�cba�cba�dba�cba�cba�ca`�b`^�b`^�a`^�a`^�c`_�cb`�cb_�cb`�eca�dca�cba�cba�cb`�dca�cca�ec`�db_�db_�                                                        b`^�b`^�b`^�b`_�b_^�c`_�b`^�b`_�da`�da`�da`�da`�da`�cba�cb`�cca�cba�cba�cba�db`�cb_�cb_�bb`�dca�dca�dba�dba�dba�dba�cba�cba�cba�ca`�ba`�ca`�b`^�c`_�cb_�cb_�cb`�dc`�dca�dca�cba�eba�da`�dca�ec`�ec`�ec`�                                                        ba_�b`^�b`^�b_^�b`_�b`_�b`^�b`^�db`�da`�da`�da`�da`�cba�cba�cba�cca�cca�cba�dc`�eda�eda�dca�dba�dca�dca�dca�dba�cba�dba�cba�ba`�ba`�b`_�b`_�ca_�db`�bb_�cb`�dc`�dc`�cba�cba�dca�eba�da`�da`�db`�db`�ca`�                                                        ba_�ba_�b`^�ba`�b`_�b`_�b`_�b`_�ca_�db`�da`�da`�da`�dca�eda�eca�cba�dca�dca�eca�db`�eda�dca�dba�dca�eca�dca�dca�dca�dca�eca�ca`�ba`�b`_�db`�ca`�ca`�cb_�cb_�dc`�cb`�ca_�cba�cba�ca`�da`�da`�ca`�db`�ca`�                                                        db`�db`�ca_�b`_�ba`�ba`�ca_�ca_�ca_�eca�dc`�cb_�cb`�cca�dca�dca�cba�bba�cba�eda�eca�db`�ca`�db`�dba�eca�eca�cb`�dca�dca�dca�da`�ca`�c`_�c`_�eba�db`�cb`�dc`�dc`�dc`�ca_�db`�db`�b``�b`_�da`�ca`�ca`�db`�                                                        db`�db`�ca_�ca_�b`_�db`�ca_�ca_�ca_�db`�dc`�db`�cb_�cca�cca�cb`�bba�cba�cba�db`�db`�db`�ca`�db`�db`�cb`�ca_�ca_�dba�dca�dba�eba�ca`�c`_�da`�c``�c`_�a`_�a`_�dc`�cb`�db`�ba_�ca_�b`_�b__�b__�b`_�a_^�ca`�                                                        db`�db`�db`�ca_�ca_�db`�ca_�ca_�ca_�dba�dc`�eca�db`�dc`�dc`�cb`�cba�cba�cba�da`�da`�ca_�ca_�ca_�ca_�ca_�ba_�ba_�ba_�cb`�ca_�da`�da`�b`_�c`_�c`_�c`_�aa_�a`_�a`_�aa_�aa`�ca_�ba_�b`_�a_^�a^^�b`_�a_^�a_^�                                                        db`�eca�eca�db`�db`�eca�db`�db`�ca_�dba�dca�dba�eca�dc`�dca�dca�dca�cba�cba�da`�da`�da`�b`_�c`_�ca_�ba_�ca_�ba_�ba_�ca_�ca_�da`�da`�c``�b`_�c`_�c`_�a`_�aa_�a`_�a`_�aa`�a`^�a_^�a`^�a^^�a^^�b`_�a_^�a^^�                                                        cb_�db`�db`�dc`�dc`�dc`�db`�db`�db`�dca�dca�dca�dca�ecb�ecb�ecb�dca�cba�cba�da`�da`�da`�b`_�c`_�ca`�a`_�a`_�ba_�a`^�a`^�a`^�a__�a__�c``�b`_�b`_�b`_�aa_�a`_�aa_�a`_�a``�a`^�a_^�a_^�a`^�a_^�a_^�a`^�a_^�                                                        ba_�db`�db`�eca�dc`�dc`�dca�dca�dca�eca�dba�edb�edb�edb�ecb�ecb�edb�dca�db`�db`�da`�da`�c`_�a_^�b`_�a`_�a`_�a_^�a`^�a`^�a`^�`^^�`^^�a__�a_^�a_^�b`_�aa_�aa_�aa_�aa_�a`^�a`^�a_^�a^^�a_^�a`^�a_^�a_^�a`^�                                                        dc`�db`�dc`�dc`�db`�dc`�dca�dca�dca�fda�fc`�ec`�ec`�edb�ecb�ecb�cb`�dca�db`�db`�ca_�ca_�a`^�ca_�a_^�a_^�a`_�a`_�a`^�a`^�a`^�a`^�a`^�a`^�a^^�a_^�b`_�a`^�a`^�a`^�aa_�a`^�a`^�a`^�a_^�a`^�a`^�a`^�a`^�a`^�                                                        dc`�db`�dc`�eca�db`�db`�dca�eca�dca�fda�fc`�ec_�ec`�ecb�edb�edb�dba�db`�dca�db`�ba_�a`^�a`^�ca`�b`_�a_^�a_^�a`_�a`^�a`^�a`^�`_^�a`^�a`^�`_]�`_]�`_]�b`_�a`^�a`^�a_^�a`^�a`^�a`^�a`^�a_^�a`^�a`^�a`^�a`^�                                                        ba_�ba_�db`�cb_�eca�db`�dc`�dc`�eca�fda�fc`�ec`�fda�ebb�edb�edb�edb�ebb�ebb�da`�ba_�a`^�ca_�da`�da`�a_^�a_^�a_^�a_^�a^^�a_^�__^�__^�__^�`_]�`_^�a`^�b`_�b`_�b`_�b`_�a`^�a`^�a`^�a`^�a_^�a`^�a`^�a_^�a`^�                                                        ba_�ba_�cb_�cb_�cb_�cb_�cb_�dc`�edb�edb�edb�edb�edb�ecb�ecb�edb�edb�ecb�ebb�da`�c`_�b`_�a_^�da`�da`�b`_�a_^�a_^�a`^�a^^�a_^�__^�__^�a_^�_^]�`_]�a`^�a_^�a_^�b`_�b`_�b`_�b`_�b`_�a_^�a`^�a`^�a`^�a_^�a_^�                                                        ba_�ba_�bb`�cb`�ba`�ba_�cb_�ba_�cb_�dca�dca�edb�dcb�ecb�ecb�ecb�ecb�ecb�ebb�db`�db`�c`_�b_^�ca`�ca`�b`_�b`_�a_^�a`^�a_^�a_^�a_^�__^�`_^�`_^�_^^�a`^�a_^�a_^�a_^�a^^�a_^�a_^�b`_�a_^�a_^�b`^�a_^�a_^�a_^�                                                        bb`�bb`�cb`�cb`�cb`�ba_�ca_�db`�eba�dca�dca�eda�dca�ecb�ecb�edb�ecb�ecb�ebb�eca�db`�da`�c`_�b_^�a_^�b`_�b`_�a_^�a^^�a^^�a_^�a_^�`_^�__^�a`^�a`^�`_^�a_^�a^^�a^^�a_^�a_^�a_^�a_^�b`_�ca_�b`^�b`^�b`^�a_^�                                                        cca�cb`�bb`�ba`�cb`�cb`�ca_�ca_�ecb�ca_�ca_�db`�dca�ecb�ebb�ebb�ebb�ebb�ebb�db`�db`�db`�ca_�b`_�b`_�b`_�b`_�b`_�a^^�a^^�a^^�a`^�a`^�a`^�a`^�a`^�a`^�a_^�a_^�a^^�a_^�c`_�da`�da`�ca_�ca_�ca`�da`�ca_�ca_�                                                        ccb�cca�cb`�bb`�bb`�ba`�ca_�ca_�db`�db`�ca_�db`�db`�db`�db`�db`�ebb�ebb�ebb�db`�db`�db`�ca_�b`_�b`_�ca_�b`_�b`_�c`_�c`_�da`�a`^�a`^�a`^�a_^�a_^�c`_�a_^�a_^�b`_�b`_�da`�da`�da`�cba�cba�dba�db`�b`_�ca`�                                                        cb`�cb`�cb`�bb`�bb`�bb`�ca_�ba_�db`�ca_�b`_�db`�db`�db`�db`�db`�db`�db`�db`�db`�db`�db`�b`_�db`�ca_�da`�ca_�db`�ca_�db`�da`�a`^�a`^�a`^�c`_�b`_�c`_�cb`�cb`�dc`�cc`�da`�da`�da`�dba�dba�dca�db`�cb`�ca_�                                                        db`�cb`�cb`�cb`�bb`�bb`�db`�ba_�ba_�b`_�ca_�db`�db`�db`�db`�db`�db`�eca�db`�db`�db`�db`�dba�db`�db`�db`�db`�eca�db`�eca�db`�ba_�ba_�a`^�ca`�ca`�db`�dc`�dc`�dc`�eca�dca�dca�dca�dca�eca�dba�eca�db`�ca_�                                                        db`�dc`�dc`�ec`�eb`�cb`�db`�db`�db`�ca_�ca_�db`�db`�db`�da`�db`�db`�ca_�ca_�ca_�ca_�db`�dba�dba�dba�dcb�db`�db`�db`�db`�ca_�ba_�ba_�ba`�db`�db`�eca�eca�eca�fda�fda�eda�eca�dca�eba�eba�eba�db`�db`�db`�                                                        db`�db`�dc`�ec`�ec`�eca�ccb�dcb�db`�ca_�ca_�db`�db`�db`�ca_�da`�ca_�ca_�ca_�ca_�ca_�b`_�dba�dba�dba�dcb�dcb�edb�dca�db`�ca_�b`_�ba_�ba_�db`�db`�eca�eda�eda�eca�gda�eda�eda�eda�eba�eba�eba�eba�db`�db`�                                                        cba�db`�eca�eca�ec`�eca�ccb�bbb�ccb�ccb�ccb�db`�db`�db`�db`�db`�db`�ca_�ca_�c`_�db`�eca�dba�dba�dba�dcb�edb�edb�dca�dca�cb`�b`^�b`^�ba_�db`�db`�db`�eda�eca�eca�eca�eda�eca�eca�eba�da`�eba�eba�eba�db`�                                                        cb`�cba�cb`�db`�eb`�ec`�dcb�ccb�dcb�dcb�ccb�dcb�dcb�eca�edb�db`�db`�ca_�b`_�b`_�da`�db`�db`�eca�eca�dcb�edb�edb�edb�dca�cb`�b`^�ba_�cb_�db`�dc`�db`�eda�eda�eca�eda�dca�eca�dca�db`�db`�da`�eba�db`�eba�                                                        cb`�cba�cb`�db`�db`�db`�eda�edb�edb�dcb�ccb�dcb�dcb�eca�eca�edb�dcb�ccb�ca_�c`_�b`_�b_^�b`_�db`�db`�edb�dcb�dcb�edb�dca�cb`�eca�db`�db`�dc`�db`�dc`�eda�eda�eca�eda�dca�eda�eca�ca_�da`�db`�db`�db`�db`�                                                        cb`�ca`�ba_�ba_�ca`�ca`�eda�edb�edb�dca�edb�dcb�dcb�eca�eca�edb�dcb�ccb�ccb�c`_�b`_�b`_�b`_�db`�db`�cbb�cbb�edb�ecb�ecb�ecb�dca�dba�cb_�edb�eda�dc`�eca�eda�eca�eca�dca�cba�dc`�ca_�b`_�ca_�ca`�c`_�db`�                                                        b`^�b`^�b`^�b`^�ba_�ba_�eda�eda�dca�dca�dca�dca�edb�ecb�ecb�edb�dcb�ccb�ccb�da`�b_^�b`_�da`�b`^�b`_�cbb�cbb�edb�ecb�ecb�ecb�dca�dca�dba�db`�db`�dc`�ecb�ecb�eda�eca�dca�cba�cb`�ca_�ca_�b`_�c`_�c`_�ca`�                                                        b`^�b`^�b`^�b`^�ba_�b`^�dda�edb�dca�dda�edb�eda�eda�ecb�edb�edb�dca�dca�ccb�da`�b`_�b`_�db`�b`^�b`^�ba_�ca_�db`�eca�ecb�ecb�dca�dca�dca�db`�db`�db`�edb�ecb�ecb�eca�dca�cba�cb`�ca_�b`_�ca_�b`_�c`_�ca`�                                                        b`^�b`^�b`^�ca_�ba_�b`^�dca�dda�dca�edb�eda�edb�edb�edb�ecb�ecb�edb�dca�dca�ba`�b`^�b_^�da`�b`^�b`^�b`^�b`_�ca_�dba�dba�dca�dc`�dca�dca�db`�db`�db`�ecb�ecb�ecb�ecb�dba�cba�cb`�ca_�ca_�ca`�b`_�ca`�c`_�                                                        b`^�b`^�b`^�ba_�ba_�b`^�cca�cca�cca�eda�edb�eca�eca�edb�ecb�ecb�dca�dca�cba�ba_�b`_�b`^�c`_�b`_�b`_�b`^�b`_�db`�dba�dca�dca�eca�eca�dc`�eb`�eca�db`�edb�ecb�ecb�ecb�dba�dba�ba`�b`_�da`�b`_�c`_�a_^�b`_�                                                        b`^�b`^�b`^�b`_�b`_�b`^�dcb�cca�dca�edb�eda�eda�edb�ecb�ebb�ebb�eca�eca�ba`�ba_�ba_�ba_�b_^�b_^�b`_�ca_�ca_�db`�dba�dba�dba�eda�dd`�eca�eca�eb`�ecb�eba�eb`�edb�ecb�dba�dba�cb`�da`�eba�c`_�a_^�c`_�c`_�                                                        b`^�b`^�b`^�b`^�b`_�b`_�dcb�ccb�ccb�edb�edb�edb�edb�edb�ecb�ebb�edb�eca�dba�bb_�db`�ba_�b`_�c`_�c`_�ca_�ca_�db`�dca�dba�dca�dba�eda�dc`�eca�ecb�eca�eba�eba�eba�ecb�edb�db`�cb`�da`�b`_�b`_�c`_�c`_�ca`�                                                                    b`^�b`_�b`_�ddb�ddb�ccb�dda�dda�edb�edb�edb�ebb�ecb�eda�edb�edb�cb_�dc`�db`�cb`�dba�dba�ca_�db`�db`�dca�dca�dca�eba�eba�eba�ecb�eca�eca�eba�eba�eba�eba�edb�eba�db`�cb_�cb_�b`_�c`_�da`�db`�                                                                                    dcb�dcb�dca�dca�eda�edb�edb�ecb�ebb�edb�eda�eda�dc`�dc`�dc`�dba�cba�dba�dcb�dcb�ecb�dca�dca�dca�eba�eba�eba�dbb�ecb�ecb�edb�edb�eba�ecb�edb�eba�eba�cb_�db`�cb_�cb`�dca�dca�                                                                                                cca�eda�edb�edb�ebb�ecb�ecb�ecb�ecb�eca�eba�dc`�dba�dba�dba�dcb�ecb�edb�ebb�ebb�ebb�eba�eba�eba�ecb�ecb�edb�edb�eca�eba�eba�eca�db`�eba�db`�dc`�db`�cca�dca�dca�                                                                                                            ecb�ecb�ecb�ecb�ecb�ecb�eca�eca�eba�eba�eba�dba�dcb�dcb�ecb�ecb�ecb�ecb�dba�dba�dba�eca�dcb�ecb�dba�eba�eba�eba�eca�eca�db`�cb_�cb_�db`�dca�dca�dca�                                                                                                                            ebb�ebb�eca�eca�eba�eba�eba�eba�ebb�ebb�ecb�ecb�ecb�edb�dba�dba�dba�db`�db`�db`�ba`�dba�db`�db`�eca�ecb�db`�cb_�cb_�cb_�cb_�db`�dca�                                                                                                                                        eba�eca�eba�eba�eca�ecb�ebb�ecb�dcb�ecb�ecb�dba�dba�dba�ca`�ca`�ca`�ba`�b`_�b`_�b`_�ca_�db`�db`�cb_�dc`�dc`�cb_�cb_�cb_�                                                                                                                                                        eca�ecb�ecb�ebb�ecb�ecb�ecb�db`�db`�ca_�ba`�ca`�ca`�ba`�ba`�b`_�b`_�b`_�da`�db`�cb`�dc`�eda�db`�dc`�dc`�                                                                                                                                                                    ecb�dcb�edb�dcb�db`�da`�da`�ba`�ba`�ba`�b`_�b`_�b`_�b_^�b`^�ca_�db`�bb`�bb`�cba�cb`�ba_�dc`�                                                                                                                                                                                    db`�db`�ca_�b`_�b`_�b`_�b`_�b`_�b`_�b_^�b`_�b`_�b`_�bb`�cb`�cb`�ba`�ba_�b`_�                                                                                                                                                                                                b_^�b`_�b_^�b`_�b`_�b`_�b_^�b`_�b`_�b`_�ca`�cb`�bb`�ba_�ba_�ba_�                                                                                                                                                                                                                ba`�ba`�b`_�b`_�b`_�b`_�ba_�ba`�ba`�b`_�b`_�b`_�                                                                                                                                                                                                                            ba`�b`_�b`_�cb`�ba_�ba_�b`_�b`_�b`_�                                                                                                                                                                                                                                            ca`�ba_�b`_�b`^�b`^�                                                                                                                                                                                                                                                        b`^�b`^�                               ImageTexture    F         
   @   
     �B  �B   SpatialMaterial                	   QuadMesh    =               ConcavePolygonShape    B   #         �   �       �   ?       ?   ?       �   �       ?   ?       ?   �       Image    B               width    @         height    @         format       RGBA8       mipmaps              data     @                              ooo�ppp�                                                                                                                                                                                                                                                        ppp�rqr�sqs�ppp�ppp�                                                                                                                                                                                                                                            ppp�rqr�srs�srs�rqr�qqq�ooo�ppp�ppp�                                                                                                                                                                                                                            qpq�sqs�srs�sss�rrr�qqq�ppp�qpq�qpq�qpq�ppp�ppp�                                                                                                                                                                                                                qpq�sqs�srs�srs�rqr�qqq�ppp�qpq�rqr�rqr�qpq�qpq�ppp�ppp�ppp�ppp�                                                                                                                                                                                                ppp�rqr�sqs�srs�rqr�qpq�ppp�qpq�rqr�rqr�rqr�qpq�ppp�qqq�qqq�rqr�qpq�ppp�ooo�                                                                                                                                                                                    ooo�ppp�qpq�ppp�sqs�qpq�ppp�qpq�rqr�rqr�rqr�qpq�ppp�qqq�srs�rqr�rqr�qqq�ppp�ppp�ppp�ppp�qpq�                                                                                                                                                                    ppp�rqr�ppp�ppp�ppp�ppp�ooo�qpq�qpq�qpq�rqr�qpq�ppp�qpq�srs�srs�rqr�rqr�ppp�ppp�srs�sqs�sqs�ppp�ooo�ooo�                                                                                                                                                        ppp�qpq�trt�qpq�qpq�ppp�ooo�ppp�ppp�ppp�ppp�qpq�ppp�qpq�rqr�rqr�rqr�qpq�ppp�ppp�rqr�srs�srs�sqs�ppp�ppp�rqr�qqq�pqp�pqp�                                                                                                                                        qpq�qpq�rqr�rqr�rqr�qpq�ppp�qpq�qqq�ppp�ppp�ppp�ooo�ppp�qpq�qpq�qpq�qpq�ppp�ppp�srs�srs�srs�sqs�qpq�qqq�srs�srs�rrr�rrr�ooo�ooo�ppp�                                                                                                                            qpq�sqs�trt�rqr�rqr�qpq�ppp�qpq�qqq�qqq�qpq�qpq�ooo�ppp�ppp�ppp�ppp�ppp�ppp�ppp�rqr�rqr�rqr�sqs�ppp�qqq�srs�srs�sss�rrr�pqp�ppp�rrr�srs�ppp�ppp�ppp�                                                                                                            ppp�rqr�trt�rqr�rqr�qpq�ppp�qpq�qqq�qqq�qqq�qqq�ppp�qpq�qpq�qpq�ppp�ppp�ooo�ooo�ppp�rqr�rqr�rqr�ppp�qqq�srs�srs�rrr�sss�pqp�qqq�srs�sss�rrr�rqr�qqq�ooo�pop�pop�                                                                                                ooo�ppp�ppp�qpq�qpq�qpq�ppp�qpq�qqq�qqq�qqq�qqq�ppp�sqs�rqr�rqr�rqr�qpq�ppp�opo�ppp�ppp�ppp�ppp�ooo�ppp�rqr�srs�rrr�sss�pqp�qqq�sqs�sss�rrr�rrr�srs�pop�qpq�qpq�qpq�ppp�ppp�                                                                                    ppp�ppp�qpq�ppp�ppp�ppp�ooo�qpq�qqq�qqq�qqq�rqr�ppp�sqs�rqr�rqr�rqr�qpq�ppp�ppp�rqr�rqr�sqs�ppp�ooo�opo�ppp�qqq�rrr�rrr�ppp�qqq�sqs�srs�srs�srs�rqr�pop�qpq�rpr�rpr�rqr�qpq�ppp�pop�pop�pop�                                                                    ppp�rqr�srs�qpq�qpq�ppp�ooo�ppp�ppp�ppp�qqq�rqr�ppp�sqs�rqr�rqr�rqr�rqr�ppp�ppp�rqr�srs�srs�rqr�ppp�ppp�ppp�ppp�rqr�pqp�ooo�ooo�rqr�sqs�srs�srs�sqs�ppo�rqp�sqq�rpr�rqr�qpq�ppp�qpq�qpq�qpq�pqp�ppp�ooo�                                                        ppp�rqr�trt�rqr�rqr�qpq�ppp�qpq�ppp�qrq�qrq�ppp�opo�ppp�qpq�qpq�rqr�rqr�ppp�qpq�srs�srs�srs�rqr�ppp�ppp�qqq�qqq�rqr�rqr�ooo�ooo�ppp�qqq�ppp�sqs�qpq�ppo�rqp�sqq�sqq�rqr�qpq�ppp�qpq�rpr�rpr�qqq�pqp�ppp�                                                        qqq�rrr�srs�trt�trt�qpq�ppp�qpq�trt�sss�sss�rrr�opo�ppp�ppp�ppp�ppp�qpq�ppp�ppp�srs�srs�srs�sqs�qpq�ppp�qqq�rqr�rqr�rqr�ppp�ppp�rqr�qqq�ppp�ppp�ppp�ooo�ppo�rqp�rqp�rqr�qpq�pop�rqp�sqq�sqq�qqq�pqp�ppp�                                                        ppp�qqq�tst�sqs�sqs�qpq�ppp�qpq�rrr�tst�tst�sss�pqp�rqr�qqq�ppp�ppp�ppp�ooo�ooo�sqs�sqs�sqs�sqs�qpq�ppp�rqr�rqr�rqr�rqr�ppp�qqq�sqs�srs�rqr�rqr�qpq�ono�pop�ppo�ppo�pop�qpq�pop�rqp�sqq�sqq�rqr�rpr�ppp�                                                        opo�ppp�rrr�srs�rqr�qpq�ppp�qpq�rrr�rrr�tst�sss�qrq�sqs�rqr�rqr�qpq�qpq�ppp�ooo�ppp�qpq�qpq�ppp�ppp�ppp�rqr�rqr�rqr�rqr�ppp�ppp�sqs�srs�rqr�rqr�qpq�pop�qoq�rpr�pop�ppp�pop�ooo�ppo�rqp�rqp�qpq�rpr�ppp�                                                        ppp�ppp�qpq�rqr�qpq�ppp�ppp�qpq�qpq�rrr�tst�sss�ppp�sqs�trt�rqr�rqr�rqr�rqr�ppp�rqr�rqr�qpq�ppp�ooo�ooo�ppp�qpq�qqq�qqq�ppp�ppp�rqr�rqr�rqr�rqr�qpq�pop�rpr�rqr�rqr�qqq�ppp�pop�ppp�ppp�ppo�pop�pop�pop�                                                        qpq�rqr�srs�srs�qpq�ppp�ooo�ppp�ppp�qqq�qqq�qqq�ppp�sqs�trt�trt�trt�rqr�rqr�ppp�rqr�rqr�srs�rqr�ppp�ooo�ppp�qpq�ppp�ppp�opo�ppp�qqq�rqr�rqr�rqr�qpq�pop�rpr�rqr�rqr�rqr�qqq�ppp�qpq�qpq�qpq�pop�pop�ooo�                                                        qpq�srs�trt�trt�trt�rqr�ppp�ppp�ppp�ppp�ppp�ppp�ooo�rqr�sqs�sqs�trt�rqr�ppp�ppp�rqr�rqr�srs�sqs�qpq�qpq�rqr�sqs�rqr�ppp�ooo�opo�ppp�ppp�qpq�qpq�qpq�pop�rpr�rqr�rqr�rqr�qqq�ppp�qpq�rqr�rqr�rqr�qpq�pop�                                                        qpq�srs�trt�trt�trt�rqr�ppp�qpq�qpq�qpq�qpq�ppp�ooo�ppp�qpq�qpq�rqr�rqr�ppp�ppp�rqr�rqr�rqr�sqs�qpq�qpq�sqs�srs�rqr�rqr�ppp�ppp�ppp�ppp�ppp�ppp�ppp�ono�qoq�rpr�rqr�rqr�rpr�pop�qpq�rqr�rqr�rqr�qpq�pop�                                                        ppp�srs�trt�sqs�sqs�qpq�ppp�qpq�sqs�sqs�sqs�qpq�ppp�qpq�ppp�ppp�ppp�ppp�ooo�ooo�rqr�sqs�rqr�rqr�ppp�ppp�sqs�rqr�rqr�rqr�ppp�ppp�qqq�rqr�rqr�rqr�ppp�ooo�ppp�pop�pop�rpr�qoq�pop�qpq�rqr�rqr�rqr�qpq�pop�                                                        ooo�ppp�srs�srs�sqs�qpq�ppp�rqr�sqs�trt�sqs�qpq�ppp�srs�trt�sqs�qpq�rqr�ooo�ono�qpq�ppp�ppp�qqq�ppp�ppp�sqs�rqr�rqr�rqr�ppp�ppp�qqq�rqr�rqr�rqr�qpq�ppp�qpq�ppp�ppp�ppp�pop�ono�ppp�rqr�rqr�rqr�qpq�pop�                                                        opo�ppp�qpq�qpq�qpq�qpq�ppp�rqr�sqs�trt�sqs�qpq�ppp�rqr�rqr�trt�trt�sqs�ppp�pop�sqs�qpq�qpq�pop�opo�opo�ppp�qqq�qpq�rqr�ppp�ppp�qpq�rqr�rqr�rqr�qpq�ppp�rqr�rqr�qpq�qpq�qpq�ooo�ppp�ppp�ppp�pop�qpq�pop�                                                        ppp�rqr�rqr�qpq�qpq�ppp�ooo�ppp�ppp�qpq�qpq�qpq�ppp�qpq�sqs�rqr�rrr�sqs�ppp�qpq�tqt�tqt�tqt�qpq�pop�ooo�pop�ppp�ppp�ppp�ppp�ppp�qpq�rqr�rqr�rqr�rqr�qpq�rqr�rqr�rqr�rqr�rqr�ppp�rqr�sqs�qpq�ppp�ppp�ooo�                                                        ppp�qqq�rqr�rqr�rqr�qpq�ppp�ppp�ppp�ppp�ppp�ppp�ppp�qpq�srs�sqs�rrr�srs�ppp�pop�tqt�tqt�tqt�sqs�ppp�ppp�qpq�rpr�pop�pop�ono�ooo�ppp�ppp�qqq�qqq�rqr�qpq�sqs�srs�srs�rqr�rqr�ppp�sqs�srs�srs�qpq�qpq�ppp�                                                        ppp�qqq�rqr�rqr�rqr�qpq�ppp�qpq�qpq�qpq�ppp�ppp�ooo�ppp�qpq�qpq�rqr�qqq�ppp�pop�tqt�rqr�rqr�sqs�ppp�ppp�rpr�rqr�rqr�rpr�pop�pop�pop�pop�ppp�ppp�ppp�ppp�rqr�sqs�rqr�rqr�rqr�ppp�sqs�srs�srs�rqr�rqr�ppp�                                                        ppp�qqq�sqs�rqr�rqr�qqq�ppp�qpq�rqr�sqs�sqs�qpq�ppp�qpq�qpq�qpq�qpq�ppp�ooo�pop�sqs�rpr�rqr�sqs�pop�qpq�sqs�rqr�rqr�rqr�pop�pop�qoq�rpr�rpr�ppp�pop�ooo�ppp�qpq�qpq�qpq�qpq�ppp�sqs�rqr�rqr�rqr�qpq�ppp�                                                        ooo�qqq�qqq�qqq�rqr�qqq�ppp�qpq�rqr�sqs�sqs�qpq�ppp�qpq�srs�rqr�qpq�ppp�ooo�ono�pop�pop�rpr�rpr�pop�qpq�sqs�tqt�rqr�rqr�pop�pop�rpr�rqr�rqr�rqr�qpq�ppp�rqr�ppp�ppp�ppp�ppp�ooo�qpq�qpq�qpq�rqr�qpq�ppp�                                                        ooo�ppp�ppp�ppp�qqq�qqq�ppp�qqq�rqr�sqs�sqs�qpq�ppp�qpq�trt�sqs�sqs�qpq�ppp�pop�rpr�pop�pop�pop�ono�ono�rpr�sqs�rpr�rqr�pop�pop�rpr�rqr�rqr�rqr�rpr�qpq�sqs�rqr�rqr�rqr�ppp�ooo�ppp�ppp�ppp�rqr�qpq�ppp�                                                        ppp�qqq�qqq�ppq�ppq�ppp�ooo�ppp�qqq�rqr�rqr�qpq�ppp�qpq�sqs�trt�sqs�qpq�ppp�qoq�sqs�rpr�rpr�qpq�ono�ono�pop�qpq�pop�rpr�pop�pop�rpr�rqr�rqr�rqr�rpr�qpq�sqs�srs�srs�rqr�sqs�ppp�qpq�rqr�ppp�qpq�ppp�ooo�                                                        ppp�qqq�rqr�qqr�qqr�qqr�ono�pop�qoq�qpq�qpq�qpq�ppp�qpq�sqs�trt�sqs�qpq�ppp�qoq�sqs�sqs�sqs�rpr�pop�pop�qoq�rpr�pop�pop�ono�ono�pop�rpr�rpr�rpr�rpr�ppp�qpq�rqr�rqr�rqr�rqr�ppp�qpq�rqr�rqr�sqs�rqr�ooo�                                                        ppp�qqq�rqr�rrs�rrs�qqr�qpq�qpq�rpr�qoq�qoq�pop�ooo�ppp�ppp�qpq�srs�qpq�ppp�qoq�sqs�sqs�sqs�rpr�qoq�pop�rpr�rqr�rpr�rpr�pnp�ono�pop�pop�pop�pop�qoq�ppp�qpq�rqr�rqr�rqr�rqr�ppp�qpq�rqr�rqr�srs�rqr�ppp�                                                        ppp�qqq�rqr�rqr�rqr�qqr�qpq�rpr�sqs�sqs�rpr�rpr�pop�ppp�qpq�qpq�qpq�ppp�ppp�pop�rpr�sqs�sqs�rpr�qoq�qoq�rpr�rqr�tqt�rpr�pop�pop�qoq�rpr�pop�pop�pop�ooo�ppp�ppp�qpq�qpq�qpq�ppp�qpq�rqr�rqr�srs�rqr�ppp�                                                        ppp�qqq�qqq�rqr�rqr�qqq�qpq�rpr�sqs�sqs�sqs�rpr�qoq�qqq�rqr�rqr�ppp�ppp�ooo�ono�qoq�qoq�rpr�qpq�qoq�qoq�rpr�sqs�rqr�rqr�pop�pop�qoq�rqr�rqr�rpr�qoq�ppp�ppp�qpq�qpq�ppp�ppp�ppp�qpq�sqs�rqr�srs�rqr�ppp�                                                        ooo�ppp�ppp�ppp�qqq�qqq�qpq�rpr�sqs�sqs�sqs�rpr�qoq�qqq�sqs�sqs�sqs�qpq�ppp�ppp�ppp�ppp�ppp�pop�ono�pop�qpq�sqs�sqs�rqr�pop�ppq�qqs�rqr�rqr�rqr�rpr�ppp�rqr�sqs�sqs�ppp�ppp�ooo�ppp�ppp�rqr�sqs�rqr�ppp�                                                        ppp�qqq�ppp�ppp�ppp�ppp�ono�qpq�rpr�rpr�sqs�rpr�qoq�rqr�trt�sqs�sqs�qpq�ppp�ppp�rqr�qpq�qqq�ppp�opo�ooo�pop�qoq�qoq�rpr�pop�ppq�qqs�rqt�rqr�rqr�rpr�ppp�rqr�trt�trt�trt�rqr�ppp�rqr�qpq�qpq�ppp�ppp�ooo�                                                        ppp�qqq�trt�qqq�qqq�ppp�ono�pop�qpq�qpq�qpq�qpq�pop�rqr�trt�trt�sqs�qpq�ppp�ppp�rqr�rqr�sqs�qqq�ppp�ppp�qpq�ppp�ppp�qoq�ono�ono�ppr�qqs�rpr�rqr�rpr�ppp�qqq�rrr�trt�trt�rqr�ppp�rqr�trt�sqs�rqr�ppp�ooo�                                                        qqq�qqq�sqs�sqs�sqs�qqq�pop�qpq�rpr�qpq�qpq�pop�ono�qpq�srs�srs�rqr�qqq�ppp�ppp�rqr�rqr�sqs�qqq�ppp�ppp�qpq�sqs�qpq�qpq�ooo�ooo�ppp�ppq�pop�pop�qoq�ppp�qqq�rrr�rrr�trt�qpq�ppp�rqr�trt�trt�rqr�rqr�ppp�                                                        qqq�rqr�srs�sqs�sqs�qqq�qpq�rpr�sqs�sqs�rpr�qpq�ono�qpq�qpq�qpq�qpq�ppp�ppp�ppp�rqr�rqr�rqr�rqr�qpq�qqq�rqr�sqs�sqs�sqs�ppp�ppp�qpq�qpq�ppp�ppp�pop�ooo�ppp�rqr�rqr�qpq�qpq�ppp�qpq�rqr�rqr�rqr�rqr�ppp�                                                        ppp�rrr�srs�sqs�sqs�qqq�qpq�rpr�sqs�sqs�sqs�sqs�qpq�rqr�srs�srs�qqq�qqq�ooo�opo�ppp�qqq�qpq�qpq�qpq�qqq�rrr�srs�trt�sqs�ppp�ppp�qpq�qqr�qpq�qpq�qpq�ono�pop�qpq�ppp�ppp�ppp�ppp�qpq�rqr�rqr�rqr�qpq�ppp�                                                        opo�ppp�qqq�qqq�qqq�qqq�qpq�rpr�sqs�sqs�sqs�sqs�qpq�rqr�trt�trt�srs�rqr�qqq�opo�ppp�ppp�ppp�ppp�ooo�ppp�rrr�srs�sqs�sqs�ppp�ppp�pqr�qqr�qqr�qqr�qpq�qpq�rpr�sqs�sqs�pop�pop�ooo�ppp�ppp�qpq�rqr�qpq�ppp�                                                        qpq�qpq�qpq�qpq�ppp�ppp�pop�qpq�rpr�sqs�sqs�rpr�qpq�rqr�trt�trt�trt�srs�qqq�rqr�qqq�qqq�qqq�ppp�ooo�opo�ppp�ppp�qpq�qpq�ppp�ppp�pqr�prs�qqr�qqr�qpq�qpq�sqs�trt�tqt�rpr�qoq�pop�ppp�ppp�ppp�ppp�ppp�ppp�                                                        qqq�srs�srs�rqr�srs�ppp�ooo�pop�qpq�qpq�rpr�qpq�pop�rqr�trt�trt�sqs�rqr�qqq�rqr�sqs�sqs�trt�rqr�ppp�ppp�ppp�qpq�ppp�ppp�ooo�ppp�pqr�pqr�qqr�qqr�qqq�qpq�sqs�trt�trt�rqr�rpr�pop�qpq�qpq�qpq�qpq�ppp�ooo�                                                        qqq�srs�trt�sqs�trt�rrr�qpq�rrr�qpq�ppp�ppp�pop�ono�rqr�srs�srs�srs�rqr�qqq�qqq�trt�sqs�sqs�srs�qpq�qpq�srs�rqr�qpq�qpq�ooo�ooo�ppp�ppp�ppp�qqq�qqq�pop�sqs�trt�trt�sqs�rpr�pop�qpq�rqr�rqr�rqr�qpq�ppp�                                                        qpq�rrr�srs�trt�trt�srs�qpq�srs�trt�rqr�qqq�ppp�ooo�qpq�qpq�qpq�qqq�rqr�ppp�qqq�trt�trt�trt�srs�qqq�qpq�rqr�tst�sqs�sqs�ppp�ppp�rrr�qqq�ppp�ppp�ppp�ono�rpr�trt�trt�sqs�rpr�pop�qpq�rqr�rqr�rqr�rqr�ppp�                                                        ppp�rrr�tst�trt�trt�srs�qpq�srs�trt�sqs�sqs�rqr�ppp�rqr�srs�qpq�qqq�qqq�opo�opo�srs�srs�srs�srs�qqq�qqq�srs�trt�trt�trt�qpq�qqq�sss�tst�rqr�rqr�ppp�ooo�ppp�rpr�rpr�qoq�qpq�pop�qpq�rqr�rqr�rqr�qpq�ppp�                                                        ooo�ppp�rrr�srs�srs�srs�qpq�rrr�trt�trt�sqs�rqr�qpq�srs�trt�trt�sss�rrr�opo�qpo�rqq�qqq�qqq�qqq�qqq�qqq�srs�trt�sqs�trt�qqq�qqq�sss�tst�tst�tst�srs�ppp�rrr�sss�qqq�qpq�ppp�ono�ppp�qpq�qpq�rqr�qpq�ppp�                                                                    qqq�qqq�qpq�qpq�rrr�trt�sqs�sqs�srs�qpq�srs�trt�trt�tst�sss�qqq�qpp�srs�srs�qqq�qqq�opo�opo�qqq�srs�srs�srs�qqq�qqq�sss�srs�tst�tst�srs�qqq�sss�tst�tst�rqr�qpq�ooo�ppp�qpq�ppp�qpq�ppp�ppp�                                                                                    qpq�qpq�qqq�qqq�rrr�qpq�rqr�sqs�trt�trt�sss�qqq�rqq�trt�trt�trt�rqr�qqq�ooo�qpq�qqq�qqq�qqq�opo�ppp�rrr�tst�tst�tst�srs�qqq�sss�tst�tst�tst�qpq�ppp�qpq�rqr�srs�qpq�ppp�ooo�                                                                                                ppp�ppp�ooo�rrr�qqq�trt�trt�srs�qqq�qqq�trt�trt�trt�srs�qqq�qqq�rqr�srs�srs�qqq�opo�ooo�ppp�qqq�srs�srs�rqr�qqq�sss�sss�sss�tst�qpq�ppp�rqr�trt�trt�trt�rqr�ppp�                                                                                                            ppp�ppp�ppp�srs�rqr�qqq�qqq�trt�srs�trt�srs�qqq�qqq�srs�tst�tst�tst�qqq�ppp�ppp�qqq�qqq�qqq�ppp�opo�rrr�rrr�sss�tst�srs�qqq�rqr�sqs�trt�trt�srs�qpq�                                                                                                                            qqq�opo�opo�srs�rqr�trt�srs�qpq�qqq�sss�tst�tst�tst�qqq�qqq�rrr�rrr�rrr�rrr�pqp�opo�qqq�qqq�qqq�srs�rqr�ppp�srs�sqs�trt�tst�srs�qpq�                                                                                                                                        qqq�qqq�qpq�rqr�qpq�qqq�sss�tst�sss�sss�qqq�qqq�rrr�tst�sss�sss�rrr�qqq�rqr�qqq�qqq�qqq�ppp�opo�ppp�rqr�srs�tst�srs�qqq�                                                                                                                                                        ooo�ooo�qqq�sss�sss�sss�rrr�qqq�rrr�sss�sss�tst�rrr�qqq�srs�trt�srs�rrr�qqq�opo�ppp�qpq�qpq�qqq�rrr�ppp�                                                                                                                                                                    qqq�qqq�qqq�pqp�pqp�qqq�sss�sss�tst�sss�qpq�srs�trt�trt�srs�rrr�ppp�qqq�srs�qpq�qpq�ppp�ooo�                                                                                                                                                                                    opo�pqp�sss�rrr�rrr�sss�qpq�srs�srs�tst�trt�srs�rrr�rqr�sqs�trt�srs�rqr�ppp�                                                                                                                                                                                                qqq�qqq�pqp�ppp�qqq�rqr�srs�trt�srs�qqq�srs�sqs�sqs�trt�srs�qpq�                                                                                                                                                                                                                ppp�qpq�rqr�srs�rqr�qqq�srs�trt�trt�trt�srs�qqq�                                                                                                                                                                                                                            qqq�qqq�opo�rqr�rqr�rqr�sqs�qpq�ppp�                                                                                                                                                                                                                                            qpq�qpq�qqq�qqq�ppp�                                                                                                                                                                                                                                                        ppp�ooo�                               ImageTexture    F            @   
     �B  �B   MeshLibrary    G         wall H         	   I      J                       �?              �?              �?            K          L        �?              �?              �?            M            N         floor O            P      Q                       �?              �?              �?            R          S        �?              �?              �?            T            RSRCGDST�   �       �����VVV��}��** ��}�U��(���*�������VVV��}�U�����}�U������*���;����VVV��}�U*�(��}�U�����\����;����VVV��}�U�  ��}�U������*�������VVV��}�U�����}�U�����<��������VVV��}�u���}��� UUU<���*���<����VVV��}�U"����}�W�����<����;����VVV��}�U�����}�U������*�����}響��������������������}�Jjjj��}爫��������������������}�jjjj��}響������    ����������}�jJjj��}�)))������U�����    ��}�B@@`��}�������������ꪪ�����`@Jj����TTTT����    ����    ��}�hhjj��}��������������������}�hjhj��}響��������������������}�jjjj��}響�)������������������}�jjjj��}響��������������������}�jjjh��]�!!������������������}�jjjj��}�)))�������WU����������}�BB`@}���TTTT����    ����ii����}����h��������    ������������````��}�����������������}���}���TTTT������������������}�jjhj��<����}飯�U��}�U������*��<����}着�U��}着*U������������}着�U}���UUU <������*;���VVV���}着�U��}�
��U;������*��<����}�u�������U<������*<���VVV�����  �U���� ��U;������*��;��}���UUU ���着�U<������*;���VVV�}���UUU ��}着�U��<������<������U�
��}�U������*�������VVV��}�U�����\��
�����*�������VVV��}�U�����}�U�����;������<����}�U�*���}�u� ���*�����<����}�U�������U ��<���*�����<����}�U�������U�����<��������VVV}��� UUU��}�U�����<������<��}��� UUU��}�U�����<������}響���������������ꪺ��}�jjjj��}響��������������������}�hjjj��}響�)������������    ��}�jjjj��}響�����������������~��}�hjjj��}響��������������������}�jjjj��}��������������������}�jjhj��}響������������������}�����}爫��������������������}�jjjj��}視��������������������}�jjbj��}響��������������������}�JBB@��}響!����������������}�jjjj��}﫩������    ����    ��}�j```��}視��������������������}�jJJj��}響��������������������}�jjjj��}響������������������}�����}響��������������������}�jjjj��<����}甆�U���着�U������*��<����}着�U��}着�U������*���VVV���}着�U��}着�U��<����;���VVV���}慠*U��}�(( ���<����;���VVV���}直�U}���UUU ��<����<���VVV���}着*U���着�U;������*���VVV���}着�U��}着�U<������*��<����}着�u��}慠�U<������*��<������U�(���}�U������*�����<����}�U��*����U�*�;���*�����<����\�U�  ��}�U������*���;����VVV��}�U*����}�U�����<������<����}�U�������U�����<������<����}�U�������U���;���*���;����VVV}��� UUU��}�U�����<������<����}�U�� ��}�U�����<������}響������    ����    ��|�@@@���}響����������������������H@@@���������UUwY������������Jjjj���視����������������_��}�jjjJ��}�	������WUUV����������}�jjjj��}�)���������������������}�jjjj��}��������������������}�jjjJ��}���������������ꪪ��}�jjjj��}響������U�������������}�jjjj��}響����������������/���}�B@@J��}��������������    ��}�jjjj��}響������    ����������}�jbjj���������_^_U����������}�jjjj��}響��������������������}�jjjj����TTTT������������������}�jjjj��}爫��������������    ��}�jjjh<���VVV���}�
 �_��}飯�U������*���VVV���}着�U��}�*�*U������*���VVV���}﨨�U��}着�U������*���VVV���}�U���直�U;������*<���VVV���}着�U��}着�U������*���VVV���}着�U��}着�U��<������<����}飯*U��}着�U������*;���VVV���}着�U��}着*U;������*<����VVV���� UUU��}�W������*�������VVV��}�U�����}�U������*�������VVV��}�U��
��}�U�(���<��������VVV��}�U  (���� UUU;���*���;����VVV��}�U�����}�U���;���*�������VVV��}�U�����}�U�����<������<����}�U�����}�U������*�����<����}�U*����}�U ����<����}���TTTT������������    ��}�jjjj��}響��������������������}�JJjj��}��������������    }�����}響�)����    ����    ��}�Hh@H��}�)	������������������}�jjjj��}視���������������ꪪ��}�jjjJ��}��������������������}�H@jj}���TTTT������������    ��}�jjjj��}�	������~�����    ��}�jjjj��}��������������    ��}�jjjj��}��������������    ��]�j`jj��}�)	�)������������������}�@HH`��}��������������������}�bjjj��}響��������������������}�Bjjj��}��������������������}�jbjj��}響������    ��������}������VVV���}��U��}蘒�U;������*���VVV���}�*��U��}着�U������*������}� �U��}�(*�U������*���VVV���}�U��}�**U������*���VVV���}�U��}着�U�������*����VVV���}着�U��}着�U������*���VVV���}着�U��}着�U������*��;����}�*�U��}切 U;������*<����VVV��}�U
����}�U������*�������VVV��}�U�����}�U��*���*�������VVV��}�U�����}�U������*�������VVV��}�U�����}�U������*�������VVV}��� UUU}��� UUU����*��������VVV��}�U�����}�U��*���*�������VVV����U�����}�U*
��;����;����VVV��}�Պ
��}�U���;���*�����}��������������������}�jjjj��}響�������������������}�jjjj��}爫��������������������}�jjjj��}響��������������������}�jjjj��}響�����������������}�����}響��������������������}�jjjj��}�)!������o�������    ��}�@@@j��}視��������������������}�jJjj��}響��������������������}�jjjj��}響��������������������}�jjjj��}響��������������������}�jjbB��}��������������������}�bjjj��}�)������    ��������]�����}響��������������������}�Jjjj��}�)��������������    ��}�Jhhj��}���������������ꪪ��}�jjjj��<����}着�U��}着�U��;����<���VVV���}着�U��}�*�U������*���VVV���}着�U��}�("�U��<������<����}着�U��}着�U������*������}�*(�U��}直�U<������*;���VVV�}���UUU ��}着�U��<�������VVV���}�U��}�*��U������*���VVV���}�U��}着�U������*����VVV��}�U�����}�U������*�������VVV}��� UUU��}�U������*�������VVV��}�U�����}�U�����<��������VVV��}�U�����}�U�����<������<����}�U�����}�U�����<������<����}�U�����}�U������*�������VVV��}�U��*��}�U������*���������}�U�����}�U������*�����}響������    ��������}���}���TTTT������������������}�jjjj��}�)��������������������}�jjjj��}響��������������������}�jjjj��}響�������������������}�jjjj��}響��������������������}�jjjj��}響�	������������    }���}���TTTT������������������}�jjhj��}響������������������}�����}響��������������������}�JjjJ��}響��������������������}�bjjj��}響���������������������bjjj��}響	)�������������ꪪ��}�Bjjj}���TTTT������������������}�Jjjj��}響������    ����������}�jjjj��}��������������    ��}�jjjj���VVV���}着�U��}着�U������*����VVV���}着�U��}着�U������*;���VVV���}着�_��}着*U��<����<���VVV���}着�U��}着�U��<����;���VVV���}飯*U��}廒�U������*���VVV���}着�U��}着�U��<�������VVV���}慠
U��}着�U������*������}着�U��}着�U������*����VVV��}�U�����}�U������*��������VVV��}�U�����}�U������*�������VVV����U*����}�U���<���*���<����VVV��}�U�����}�U*�
���*�������VVV��}�W
��}�U������*�������VVV��}�U�����}�U�����<��������VVV��}�U  ��}�U������*�������VVV��}�U��
��}�U� ��<������}響��������������������}�jjbJ��}響��������������������}�h``j��}�	���������������    ����jjjj��������������������    }�����}�	)��������������    ����jjjB��}�	�����������U�߿��}�jjjJ��}�				������������������}�jhjj��}響�������������������}�@@@B��}))������������������}�jjjh��}��������������������}�jjjj��}響!�������������ꪪ���}�jjjj����	��������������������@@`@��}響������    �����꯯��}�Hh�h��}爫		����    ������������J�B@����	))	������������    ����jhhH��}爫������    ����    ��}�@@H@��<����}�U��}着�U�������*����VVV���}着�U��}着�U������*���VVV���}慠�U��}慠�U<������*��\����}飯�U��}直�U��<������<����}�**U��}�**U��<����������}�U��} U��<����<���VVV�����
U��� U<������*��<����}�***U��}﨨�U;������*��<����}�U�����}�U�**����*��������VVV��}�U   ��}�U������*�������VVV��}�U�������U��*\���*�����\��#��}�U(  ��}�U���<���*�������VVV��}�U  ��}�U�����<������<����}�U�����}�U
  <���*���<����VVV����U�*�����u���<���*���<����VVV��}�U( �����U�����<������}�			����    ����    ��}�Jjjh��}視������    ����    ����jjjJ��}�!����    ����������}�hjjj���������*�����~___}�����}�				�������~������������Jjjj}���TTTT���������������������jh����)������    �������_����jJB���}���������U����������}�```b}���TTTT����    ����������}�jJjb��}�)���������������������}�BB@@��}�������    ����    ����jjhj����		)�����    ����_o_��}�jJjj��})�����ozz�����kim�����bjBJ����	��	������������    ����hhhh��}�	��������������    �������B���������    ����    ��}�jjjj���VVV���}�**U}���UUU ������*���VVV���}�U��\�  �_������*��<����}�(*U��}着*U��<����;���VVV���}� �U��}�U������*���VVV���}�U��}�U��<����;���VVV���}猪�U��}�*��U��<������<�����}�

U��}�_<������*��<����}�*�U��}着�U������*}����VVV��}������}�������}���������+�������������#}���*���}����VVV�������}����VVV���������}��������������}�������}�j���}���VVV���}������}﫫����}������}����}������}������}��������VVV��������~����VVV��������}���VVV���}��������VVV���}������}��#+���}������}�������}������}�������}����������+�}���*���������������z�������VVV��}������}�������}�j�������������}����}���VVV���}������}﫫�����������}����}����}���VVV�}������*��}﫫������������﫫����}������}﫫����}������}﫫����}����}����VVV��}������}���������*�������������}�ꪪ��}�����}���*���}����VVV��}��������������}�{�����}�������}����}����VVV��}��������+����}����~��}﫫����}����}���VVV�}������*��}�+�+���������������}������}﫫���������}���V�V���}������}����}����}����VVV}���*�����}�������}������}��+�+��}�o���}����VVV�����������������}������}������������}����VVV��}������}�����}���*���}���VVV���}������}�+����}������}﫫���}������}�����}����}���VVV���}������}﫫����}������}﫫����}������}﫫�}������*����������}������}�������}������}������}������}�������}������}�������]������}�������}����}����VVV��}����}����VVV��}������}﫫����}������}﫫����}������}�++����}������}﫫����}������}﫫+���}����}���VVV���}������}�+�����}������}﫫����}������}�����}���*�����}�������}������}�������}������}��������������}�������}������}�������}����}����VVV��}������}�������}������}﫫����}������}﫫����}����}���VVV���}�������﫫����}�������﫣����}����}���VVV��������}���VVV���}������}﫫����}������}���+���}������}�������}����}����VVV����*�������������}������}����+��}����}����VVV}���*���}����VVV��}�~�����}��+}���*������遲����}������}﫫����}����}���VVV������������VVV��������*����VVV����������}�+��}������*����������������+##�}������*}����VVV��}����}����VVV��}����}����VVV����*������������*���}����VVV����*�����}����������������VVV�����������+����������}�+��}������*}���VVV���}������}�+���������*�������}������*}���VVV�����������+������������}�#����������*}���VVV���}��������}ik}���� (( ����U�yU����}��}����}��}����}��}����ummU����U}�U����]ikU����]��}����U{�U����}i�}����ui�U����}{{]����}��}����Uyy]����]ik}����u��U����U�k]����}��}����}kkU����}i�U����U��]����]�ku����}kk}����UiiU����]��}����m��}����}��}����}��}����u��U����}ii}����}}yU����Ummu����]iiu����}��}����}��}����}��}����]�i]����}�iu���� (( ����}��}����]ii}����Um�U����UikU���� (( ����}��y����U�iu����Uik]����}��}����}��}����U��}����]��}����]��}����}k�}����}��}����}��}����]��U����}��u����}��}����}��}����}��}����}��}����}�kU������������������������������������������������������������ﮪ�����    �����������������������������������    �������������������������������������ﯪ�����着����몿�����������������    [remap]

importer="texture"
type="StreamTexture"
path.s3tc="res://.import/floor.jpg-7ee049b017d61027b587b573f8c11f3f.s3tc.stex"
path.etc="res://.import/floor.jpg-7ee049b017d61027b587b573f8c11f3f.etc.stex"
metadata={
"imported_formats": [ "s3tc", "etc" ],
"vram_texture": true
}

[deps]

source_file="res://textures/floor.jpg"
dest_files=[ "res://.import/floor.jpg-7ee049b017d61027b587b573f8c11f3f.s3tc.stex", "res://.import/floor.jpg-7ee049b017d61027b587b573f8c11f3f.etc.stex" ]

[params]

compress/mode=2
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=true
flags/filter=false
flags/mipmaps=true
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
         shader_type spatial; 
render_mode skip_vertex_transform, diffuse_burley; 

//Albedo texture 
uniform sampler2D albedoTex : hint_albedo; //Geometric resolution for vert sna[ 
uniform float snapRes = 8.0; 
uniform float roughness = 1.0;
uniform float specular = 0.1;
uniform vec2 uv_scale = vec2(1.0, 1.0);
uniform vec2 uv_offset = vec2(.0, .0);
//Controls the how much light it recieves
uniform float light_intensity = 0.3;

// For transparent textures
uniform bool transparent = false;

// cull mode disabled

//vec4 for UV recalculation 
varying vec4 vertCoord; 
void vertex() { 
	UV = UV * uv_scale + uv_offset;
	VERTEX = (MODELVIEW_MATRIX * vec4(VERTEX, 1.0)).xyz; 
	VERTEX.xyz = floor(VERTEX.xyz * snapRes) / snapRes; 
	vertCoord = vec4(UV * VERTEX.x, VERTEX.z, 0); 
} 
void fragment() { 
	
	ROUGHNESS =roughness;
	SPECULAR = specular;
	ALBEDO = texture(albedoTex, UV).rgb; 
	
	
	//Check if the texture is transparent
	if (transparent == true){
		// alpha value less than user-specified threshold 0.0?
		if (texture(albedoTex, UV).a <= 0.0)
        
    	{
        	discard; // yes: discard this fragment
    	}	
		
	}
	
	
	}
//QUICK FIX TO LIGHTING
void light()
{
	
	DIFFUSE_LIGHT = ALBEDO*LIGHT_COLOR*ATTENUATION*light_intensity;

}          GDST�   �       ���y�R[�s��y�꯷��x�
+�ޙ։����ޙ������޺�ߞ�^�޹������ޙ֊����޹�����޺�����޹�ʌ.�޹������޹�6����ޙֿ���ޙ֫�˒�ޙր�̞�ޙ�����ޙ�h���ޙ֫� �ޙ����[��y֮o�^��y�Wݥ��y�~UZ��y�{����ޙ�%����ޙֻ���ޙև�-��ޙ�����ޙֽ����ޙ������ޙ������ޙ�__޺�y�_]�ٙ�x��H_���y֯����ޙ���ރ�޹��*���޹֪h���޹֪�b��ޙ֫����޹֪����޺�
����޹�諺��ޙ��:�޹���"�x��ު����޹�#2ޙ־����޹ֿ���ޙ�N���ޙ�h�^~��y����~��XΨ�" ��X�+�j��X�(#���ޙ��5���޹�����ޙ�+����޹���:��ޙ������޹������ޙ֫�j��ޙ�j�˪�ޙ��z����yκ����֙�    �ޙ֕����ޙ���ߺ޹�쪮��ֹ֨�+��޺�~(���޺�v���޹������֙֎.���޹֪����ޙ֫k˪�ޙ�0,�*�޹��x��ޙ�����ޙ������ޙ���ۗ�ޙ��꾟�ޙ��_{ߺ�y��^�U��xֿ����y�{{����x֕z�h��y�/+���ޙ֯訟�ޙ֯����ޙ����ޙ։����ޙ�
��<�ޙִΪ��޹�o����ޙֺo���ޙ�tкl�ޙ�홝��ޙ֯����ޙ����u�ޙ֮>���ޙ־�>��޹�����ޙֈ>���ޙ�(8>�ޙ֪���޹޲��>�ޙ���~�޹ֺ��/�޹�����ޙ�^����ޙ�[uu�ޙ֗տw�ޙֶ�7���y��j����y��ձ��y־�����y�(1���y�[�/���y������޹�Us�_�֙��gj��޹ֿ��
�ޙ֡�o��ޙ������ޙֺ����ޙ�����ޙ֭� �ޙ�ͦ���ޙ֯߆�ޙ������ޙ��n���ޙ��o���ޙ�{����ޙ֨��O�޹֮����ޙ֢N���ޙ֎�o��ޙ�����ޙ�殻��ޙ֍����ޙ��n��ޙ����ޙ�׻���ޙ֯��;�ޙֽ>���y��⚪��y�4 ��y������ޙ�}�����y֯R���y���5��ޙ־����޺ֱ����޹֤����޺���y��޹֮�ޙֻ�����yָ⤯�ޙ֎~�z�ޙ�b����ޙֹi�ߺޙ֠�����yֹ����ޙ����=�ޙֻ��O�ޙ������ޙ���>�ޙ���c��ޙ�i��~�ޙ������޹֯*���ޙ޶�w�޺������޺�xPj0�ޙ֘ˮ��ޙ��ڢ���y֪�)��ޙ���K�ޙ�w[�~��X�������y���
���x�޻�*��y�+>��ޙ֬����޹։��ޙֿ����޹֋���ޙ֋��޹�"����ޙ�>h���ޙ�>����֙���WW��y֨����֙����޺ޙ������ޙ��?���ޙ�?�΋�ޙ�i����޹�
�.��޺֪����ޙ�ꩫ��ޙ���n�ޙ��:��ޙ�.+�ޙ�(��j�޺֏���ޙ֪���޹����ޙ�{���ޙֻ���ޙ�ێ�n�ޙֿ����ޙ�gI���ޙ־1���ޙ�\s�>�ޙ֯'���ޙ�����ޙ������ޙ֮����y�Ŕ�~��y֫��U��y֫u�]��y��:� �֙�    �֙�eoUݺޙ������ޙ�m����ޙ��+���ޙ��*��ޙ֬���޹֎��n�޺��K���޺֫����ޙ֚����ޙ֫�Os�޺֭;���޺֪�hM�޹֧����ޙ�쨪��ޙ֫�*j�ޙ֮*���޺֟�j��ޙ��}}κ֙փ��N�ޙ�,���ޙ�W«��ޙ�7���ޙ�8���ޙ֪��k�ޙ�n�>Һ�y���~yֺ� 
���X��ȯ���y���^���y�VU�w��y�����yֿ��}�ޙ��}g�޹ֺ߫��ޙ������ޙ�>�;��޹֞����޹�n���ޙ�1����޹��:��޹֫(���޺��~��޹־����ޙ�%����ޙֿ߼��޺֪����޺�T}g^�޹ֻﾪ�޹�"����޹�*���ޙ��|z\�֙������y΋�ꪺޙ���~���y������ޙ���U��ޙֺ����y�]W'���y����۹�y��޾��x�?�����y�WwUe��y����y�B, �ޙ�w��^�ޙ֫����ޙ־����ޙ�����ޙ֯-��޺���|�ֹ�z����޹ֿ�'��޹�6+���ޙ֮����ޚ־���޺�Àd�޺�"��:�޹��.�:�޺֪8Ⱥޙ֪����ޙ֨����ޙ־������)**��ַ֙�勺ޙ������y�o����y��o����y���޺֙���V��y�l��h��yΫ��.��y�*
2��y�/?� ��y�d�"#��x�������y���g��yΫ��޺ޙ�Uu����y� �ޙ�mN��ޙ���'��ޙ֯����޹������ޙֶ�*+�޹�+���޺֮��u�޺�.�n�޺�[frl�ޙֺ��W�޹ֺ����ޙ����^�ޙ����]�ޙ�
�5_�ޙֺ�x��ޙ֪����ޙ��zպޙ�o���֙�W����ֵ֙�����yζ�����y�8  ��y�������y�:*���X�(��֙�]�U]��yְ0V��y��_����y�cN����y����ֹ֙�XXVT�ַ֙���ޙ֛����ޙ֣����ޙֻ����޹�#+/�޺����W�ޙ֨����ޙ������ޙֆ�{��ޙ��C[���y���n���y֫�����yΪ����֙�{�y���y�lzw���y�zWW���X΀��z��yί.�ޙ�y� ����y�껯��YΊ��y֊�}p��x�(.��yί����yζ����y�uu^ՙ�y������Xο����X�?,�*��yַ]]��yַ�����y��~����yκ����ޙ��G��ޙ֯kr�ޙ�릑:�޹֫����޹��~׻�ֹ�*����ֹ�+Ϋ��ޙ�?�~~�ޙ�~nͱ��y�Z����y�}�ͺ�y��W����xΌ�����y�hﻯ��y֕�_��ޙ�Zu]ߙ�y�m�TS��X���˨��X��  ��y֝��U��y�c�����X����ʺ�y־�����y�&��,��y����۹�y����y�uW���y���~��y������y�ߟ����y��ߞ��ޙ����ߺޙ���/��ޙ��69��ޙ������y��ڤ�޹����8�޹��8���޹���k��ޙ֚s���ޙ�G�����y��fW��yΆo���y֞��}��y�}����XΏ�����y���uU��YΨ�~���XΨ�����Xβ
���y��}nǹ�yֿ�����X�������XΪ��*��x���Xκ����ޙ�uｆ�ޙ���k���y֯����ޙ�V�n���y���?���yγ���ޙ֔���ޙ��z��ޙֻ����ޙֶ�+"�޹�.< �ޙ֚��޹޼3���ޙֻ�*�ޙ����H�ޙ֮:����y���~��y����;��X��b�
��x�3�8��XΎ ,��XΊ򺢚�XΜ����Yμ�ںy�X��*�y�XΧ����Xκ�>���X�kꢂ��X΋.#*��y������ޙ��g���޹����{�ޙ���4�޺������y֗����޹�����ޙ��**��ޙ�m�>*�ޙ�\����ޙ������޹ֻ+�8�޹�(����޺���+�޹���,��޹���� �ޙ��4��ޙ����=��y֨����ޙ�y]e\��y��᥺ޙָ�����X������x֊*���y�\9,��X��0�<��y�r򢨙�Y�������yη����yο�����yΨ�" ��y�Wݽ{�ޙ֟���ޙ��?��޹��j�ʺޙ�?+�0�ޙ�닗��ޙ��̤��ֽ=_��޺�>�=�ޙրr���޹�"���޹���=�������ޙ֏�"2�ޙ�"��+���w������U����������ޙ�3�0��y֚�����y�ZZ{~��x�?������ި�
 ��y��fw_��xί�����y�g|)��Xξ�  ��yο�����y��wW\��x����:�ޙ������ޙ�e俋�ޙΚ�(*�ޙ֎*��y��ި�����֍�:R����j����y�ꪨ�ޙ�z�˰��y�/�=��޺�����޺���__���ު��
�ޙ�j��(�ޙ�"i����j�������6?=�ޙ���ã�ޙ����޺����޺������ޙ���� �ޙ�~�w���y�Wj���y�Vu�ߺ�yο�����y�u���֙�_�/���y�g��h��y������yέ�#��ֹ֙9z��ޙ֋���޹�������e����޹�{�.�ޙ�;����޺��W���ޙ֫������J����ޙ�~�>�ޙ����ޙ����޹�cC��ޙ�߾��ޙ־>��޺�d�( ���;���������������Z��ޙ֮��
�޹��Ʈ��ޙ������޺֮o��޹�~����y�* 
��yΨۛ��ޙ�۶n~��y������ޙ���/�ޙ���z�ޙ������ޙ�����޹ֿ���޹� �����޿*�|�ޙ� *���֬����޹�2��޹ּ�����y֯x�n�޹����ޙ֯�o�ޙ�_{�u��yΊ����ޙ������ޙ���]��ޙִ�[l�ޙ�5����ޙ֊/�:�ޙ֠J������t�޹ޫ����ޙ��ʫ�ޙ֡����ޙ���|�ޙּ�޾�ޙ���u���y���:���XΨ����ޙ�Ƨ���޺֧v���ޙ���{���y֯���ޙֽ��~�ޙ֊�+�ޙ֩��*��ޛ�������������>���ޙ�	��x�ޙ�伾޺ޙ�w�����y�������y�?�W���y֭����ޙ�����ޙ�{z���ޙ֧~_��y֋>����_޸�ޙ֯����ޙ֎����޺��Zw�ޙ����޺ֿ�C��ޙֆ�ب�ޙ��b4��ޙ֪����ޙ�Hj���ޙֶ����ޙ�7���ޙֆʸ�ޙ�h����ޙִ����y֕����ޙ������ޙ�+��s��֭?�?����﫽��������ְ���ޙ��l�|��y�߳뿺�y�{}���yֿ�e��y�Ϧo��ޙ�׿���ޙ������ޙև���ޙ�ٚ��ޙ������y֪+����y���n��ޚ֛/�O����j����ޙ�
����ޙ֨����ޙ֪~��ޙַ�)���x��ث��ޙ�#����޹޺���޹�*+���֛��������ޙֻ����ޙ��[�j�ޙ���=��޺�yu���޹��:�޺�!V�ޙְ����޺��쾪�ޙ�x|^���yֿ��u�ޙ֪h~���Xξ�޹�y־Ϲ;�޹������ޙ�i���ޙ֫�u��ޙ������ޙ�V��ܺ�y��u���y�׿���޹֩�{��ޙֹ��/�ޙ������ޙ�����ޙ����יֺ֪����ޙ�/핺ޙ�����ޙ־���ޙ���ޙ��2�ޙ֘�����������ޙ֬�j*�ޙ֊����ޙ�;:��޺ޛQPu�޺��PT�޹�>��޹֎j���ޙ��|{Ժ�y�u�����y�'{Z[��y����޺ޙֽ����ޙֿ���ޙֵ�;��ޙ������ޙ�n���ޙ��۩��ޙ�z�ޙ��/���޺֮j�K�ޙ֦�?����ަd���ޙ�����ޙ�}~o{��y���퇺�y��TW���y������ޙ֮&���ޙ֮�8��ޙ֭+����y��?����y������ޙ��3+��޹֊⾂�ޙֺ:��޹ު�+��޹֮����ޙޯ����ޙ�/:<�ޙ�|Z~n��y���?պ�y������ޙַ����ޙ�.)Ǯ�޺ַ����޹������ޙ֦zj��ޙ����.�ޙ�?����ޙ֡����ޙ�6�j��ޙָ�貺ޙ֢�2��޺�s����ޙ��.�l�ޙ�����ޙ���W^��y��߷���y֗�*��y֭��պޙ��o5��ޙ��e���y֠��c�޺��>6 ��xֺ������﾿�ޙ֋�c��޺�^����޹�����޹�+���޺�7'/���y�r�ޙ��n���ޙ�����ޙ֯����ޙ�*���ޙֻ���޹��*��ޙ�l����޹�h��*�޹���{�޺��%�b�޹���������k���ޙֻ�&�޹�� �ޙ�n���ޙ��+�6�ޙ�~{���y֗�W_��y֢�/���y��v�f�ޙ���u��޹֋�����y�k+*n�޹֯����޹�����ޙր��*�ޙ�*�j��ޙ����&��y�멩��޹������޺ֽ+�:�ޙ֊�'��ޙ֫�r��ޙ������ޙ����޹�鋙��ޙ�����޹֦�ޙֺ��:�޺֯���޺���=e�޺֪�������.�����Nﯥ��ֶ�����֧����ޙֶ�$��ޙ֌����ޙֳ����y�����yֻ��5��y����պ�y������ޙֺ��?�޹�=����ޙ�,"�:��y֩�3�ޙ֪��>��y�������y������޹ք���޺֦����޺ֿ�,��޹�����ޙ��nz��ֹ֨����ޙ�[���ޙ������ޙ֪����ޙ���_��y֨����ޙ֫����޺�]�2��ޙ֛����޹�&9[����������]��U�ޙ֣����޹֬<�n�ޙ���|~��y������y�j꺾��y�m����ޙ������ޙ������޹֪{���ޙ�F>+��ޙ֣����ޙ��:����y�0����ޙ֎�{��ޙ֊����ޙ֨����ޙ֪���ޙ֪����ޚ�b�~��ޙ�����޹����?�ޙ������޹��3���֙���w��y� �j���y���u���xֻ����ޙ�"����ޙ�2�.<�ޙ�J��������ʫ��ֻ������������މ����ޙ�~����ޙ�}��7�ޙ�����޹������ޙ֪/���ޙ�l���޹���*��޹��j���ޙ�j4	+��y֬�٫�޺�j�ޙր����ޙ�붻���y���ޮ�֙�W�U�ֵ֙'U��ޙ֫����ޙ�����ޚ�ߨ���ޙ�����ޙ���w}��y��w]v��yΗ����ޙ��swՙ�y� 8$�ޙ������޺ַ�/��޹�,00"������j�޺�UU����������޺֜����ޙֺ+�k�ޙ�s��޹���ޙ�n�ʊ�ޙ���޹֫����ޙ�	����ޙ֩" ��ޙ֮>+��޹�3����ޙֿ򮛺֙ւ���ޙ��׺Ǻޙ����׺�y�~�_W��xֺ��ɺ�y֯����ޙ֘{���ޙ֦c����yֿ�߯��yֺ����Xξ�ﺹ�X΢����y��y}��y�+#�޺�y����޺����f�޹֠��*�޺޿�׫�޺޺>��������޹��(���ޙ���:��޹ނ����ޙ֪�*�ޙ������ޙ֮����ޙ�꣫��޹��.��ޙ֯��<�ޙ֨~���޹�檮��ޙ֧~�o��y֎����ޙַ�Ww�֙�    ��y�W��`��y�۪����y����f�ޙַ7��ޙ�n�����y������y����{��y���Wי�y�wNVW��x�"
��yֿ����޺�:����޹������޹ֺ������-������om�]��ޝ=��޹ޢ�,�޺�	��}�ޙֆ����޹�+��;��֯)���޹֎����ޙ���*��ޙ���ʫ�޺����?�ޙ���&�ޙ������ޙ���{޺�x�������y������ޙ��}}m�ޙ�Uݟ���y֗����֙�����ޙ�'����ޙ������֙��v����y֐�� ��y�UWg}��y֥����޹������޹֯����޺ւ(*��޺ނB^�ޙު(���޺֪����޹֮����ޙ��h�w��yր ���y��׵��޹������ޙ������޹�몿��ޙ�z��ޙ�W����ޙ������֪֙*���޺�ꮻ��޹ֺ����޹�����޹�ꪪ��ޙ������ޙ������֙�o^W���y�m�����yֵ����޹ֺ������ު����޺�����޹����޹������ޙ������ޙ������޺������޹ֺ���ֺ�j�j��ޙ��+��ޙ���診ޙֺ�֙�V^{��y���U��ޙ�ߗ�}�޹�����޺ֺ���ޙ֫����޹�����֙�    �ޙ�����޹֫����޺־����޺������޹ֿ����޺��s���޺������޺�Z����޺��~~[�֢֙�:��ޙ�j����޹�鯪�ֺު��*��yֻ^w_��yւ��.��y�

�ޙ֯����ֺު����޹ֺ����޹ֺ����޺������޹֚�
��޺֥����޺����z�޺�+����ޙ����ںޙ�����֙�=�����y�z�{��y��5���y֏� �ޙ�������y���e��ޙ�����ޙ־����޺�����޺֫����ޙ֢��~�ޙ֪����ޙ��v]�ޙ���wU��yΪ�����y֪�����y֪��}��yր  ��y֯:2 ��yր�к��yֽ�����y�����ޙֽ����޹ֻ����޹������޺������ޙ������y����W��yֿ�չ�yֺ��ߙ�y� ��W��Xξ
���y� k���y�0�"��y�������y�U����ޙ����*�ޙ���ɪ�ޙֿ����޺�?��,�޺�eVX��ޙ��㮺�ޙ���z�ޙ�u姹��y�UUV_��y�g�L�y�y�Ϯܨ��YΏ*" ��y֖�. �ޙ������޺�޷���ޙ��꠫�ޙ֣���޹֪(���޺�+��"����ھ�޺ޭ�j�޺�u�bo��y�n����y֭�W���y֐ ��y�UU�˹�y��m�*��y����*���}��*�޺��*�ޙ�2�޹���*�ޙ�>����ޙ֨"�_�ޙ֫���޺ր��޺��$�y�޺�ck���޹������ޙ�����ޙ���:��ޙ֭����֙�����޹֫����޺��V��޹��8��ޙ������y֢���ޙֽ����ޙ������ޙ��/��ޙ֯����޹ֺ����ޙ֪����ޙ֬���޺��ˢ��޺�/����޹������ޙ�����޹�;.*��޺�����ޙ�����ޙ�ۯ}��yֻ��׹��ު����޹ֿ����ޙ�W����ޙֽ����ޙ�껫��ޙ���z���y�/�}{�ޙ�����޺֊?/�޺ޔ�٦�޺־����޹�*�**�޺ޤ����ޙ��k���y֭M����y������޹֯�/�޹��
���޺ֻ����޺���޹ދ.+�޺�������y����z�ޙ��RZۺޙֿ�-��޺֬����޹ֿ����޹ދ.�*�ޙ�.��*�ޙ��⢰�ޙ������޺��穿�֙ր��~����j����޹�����޹�";�
�޺���[�ޙ֪��j�֙�Z���y������ޙֽ���޺֯����ޙ֯����޺֢+���ޙ֠����޹�����޹����/�޹�������y� �<�ޙ���~_�޹֪����޹޸( �޺�R�k��޹��
��޹��﮺�޺ֻ���޺ֿ���޺�t:��޺�������ީ�*���y�����ޙ֯��U�޹֪���ޙ���_��y�
F�N��y������޺����n�޹�
*.�޺�`����޺���.[�޺�z���޺�7}��޺��t��޺֫���ޙֺ��z��y֪��ݺ�y�����y������ޙ������y� �� ��y֕����޺ֽ믿�޺֢����ޙ֪����ޙ���{���y�����޺�����޹���꫺֪֙꽭�޹������޹������޺�UmNغޙ�z����ޙ��վ��ޙ֫����y֨�w�ޙֵ��ߺޙ֫����޺֯����ޙ־����ޙ֪��_��y����պ֙�o_U��yָ	���ޙ�U����ޙ����*�޺��ꪸ�ޙ��z޶��y� ����yΨ����y��U���ޙ�U���ޙ֪����޹֊
��޺������ޙ��z����y�W���ޙ�յ/��޺֫���ޙ֠����֙�모��ޙֳ����ޙ֪���ޙ֪����޺��⪫�ޙ֭����޺������ޙ��ٷ�ޙ֪����޺ֿ��.�޺������ޙ�wgw��ޙ֯����޺������޺�m����޹ֿ����֙�    �޺֮/>�޺�f��޹ֻ����޺�����ޙ֪��^�ޙֿ�u��֙����~��y֭+���޺ֺ���ޙ�Z�޺�ޙ֪��^�ޙֽ����ޙ֪�j���y���_U�ޙ�_U���޺�+����ޙ�x���ޙ�պ���ޙ֪����ޙ֪�%��ޙ������ޙ֫��j�ޙ֪����ޙ֫����y֮�~��ޙ���ꉺޙ֏���ޙֻ����ޙ֮���t�������    [remap]

importer="texture"
type="StreamTexture"
path.s3tc="res://.import/wall.jpg-f3dc2e7903ac5ac66d4dd98181f3ed0c.s3tc.stex"
path.etc="res://.import/wall.jpg-f3dc2e7903ac5ac66d4dd98181f3ed0c.etc.stex"
metadata={
"imported_formats": [ "s3tc", "etc" ],
"vram_texture": true
}

[deps]

source_file="res://textures/wall.jpg"
dest_files=[ "res://.import/wall.jpg-f3dc2e7903ac5ac66d4dd98181f3ed0c.s3tc.stex", "res://.import/wall.jpg-f3dc2e7903ac5ac66d4dd98181f3ed0c.etc.stex" ]

[params]

compress/mode=2
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=true
flags/filter=false
flags/mipmaps=true
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
              [remap]

path="res://entities/Block.gdc"
       [remap]

path="res://entities/Button.gdc"
      [remap]

path="res://entities/player.gdc"
      �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Major Jam Trainer      application/run/main_scene$         res://levels/level_01.tscn     application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �      display/window/stretch/mode         viewport   display/window/stretch/aspect         keep   input/move_forwards`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script         input/move_backwards`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script         input/move_left`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script         input/move_right`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script         input/move_jump`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         input/click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres      