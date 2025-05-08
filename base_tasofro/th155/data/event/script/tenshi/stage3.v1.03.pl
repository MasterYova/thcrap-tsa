#========================================================================
#	�V�q�F�X�e�[�W3�@����@
#	�ꏊ�F
#�@ �X���C�u�F�j���ہ@�G�`�[���F�j���ہ@���q
#	�X�e�[�W�^�C�g��
#	   �u�v
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

,Function,"::battle.Enable_win_demo(false)"#�����|�[�Y���o����

#�S�Ă�sinmyoumaru3��sinmyoumaru�ɕύX����Ǝ��s�ł��܂�

#�t�F�C�X�摜�Q�Ƃ̒�`
#1Pmaster
,LoadImageDef,tenshi,"data/event/pic/tenshi/face.pat"#���O,�\�[�X�t�@�C����
,DefineObject,tenshi,tenshi,1p,240,0,false#���O,�O���[�v��,x,y,���]

#1Pslave
,LoadImageDef,sinmyoumaru,"data/event/pic/sinmyoumaru/face.pat"#���O,�\�[�X�t�@�C����
,DefineObject,sinmyoumaru2,sinmyoumaru,1p,240,0,false#���O,�O���[�v��,x,y,���]

#2Pmaster
,LoadImageDef,sinmyoumaru,"data/event/pic/sinmyoumaru/face.pat"
,DefineObject,sinmyoumaru,sinmyoumaru,2p,1040,0,true

#2Pslave
,LoadImageDef,usami,"data/event/pic/usami/face.pat"
,DefineObject,usami2,usami,2p,1040,0,true

#�����f�[�^���[�h�i�������e�̎w�肪����ꍇ�A�����ɕ`������ł��炦��ΑΉ����܂��j
,DefineObject,sinmyoumaru_name,sinmyoumaru,name,920,0,false


,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,LoadAnimation,"data/actor/story_title/tenshi/title3.pat"#�X�e�[�W�^�C�g���摜�ǂݍ���
,LoadAnimation,"data/actor/story_name/sinmyoumaru/name.pat"#�G�����摜�ǂݍ���
,LoadAnimation,"data/actor/story_name/usami/name2.pat"#�G�����摜�ǂݍ���
,GoSub,init				,# ���������[�`���Ăяo��

,Function,"::battle.team[1].current.Wait_Outside()"
,Function,"::battle.Enable_BossKo_StandUp()"#�G���������Ȃ�+��b�f���ŋN���オ�������

#�J�n�J�������o
,Function,"::battle.BeginCamera()"#�J�������o�A�X�e�[�W�C�����J�n
,Sleep,2,#�E�F�C�g����
,Function,"::graphics.FadeIn(60)"#��ʂ��t�F�[�h�C��

,Function,"::sound.PlayBGM(405)",# �w��BGM�Đ��J�n

#�����\��ݒ�
#,ImageDef,�ݒ�Ώ�,�\����e,�\�����W�␳X,�\�����W�␳Y
,ImageDef,tenshi,��1,0,0
,ImageDef,sinmyoumaru2,��1,0,0
,ImageDef,sinmyoumaru,��1,0,0
,ImageDef,usami2,��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Sleep,60#�X���[�v���߁@�w�萔�l�t���[���҂��܂�

#�^�C�g���R�[���o��(���ݖ�����)
,Function,"::battle.Show_StageTitle()"#�^�C�g���R�[���o��
,Sleep,150

,Show,tenshi,-1280,	#�Ώۃt�F�C�X�\���J�n
,SetFocus,tenshi	,
,ImageDef,tenshi,��1,0,0
���[�A�����Ď��͈̂��񂾂�H\n���ɓ{��Ȃ�ĐM�����Ȃ�\,a,0,0
,ClearBalloon,tenshi

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# �X���C�u�ɓ���ւ��

,Show,sinmyoumaru2,-1280,	#�Ώۃt�F�C�X�\���J�n
,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,��1,0,0
���[���ƁA�܂�\n�s�ǓV�l�ƌĂ΂�Ă���\n���R�͔�����\,a,0,0
,ClearBalloon,sinmyoumaru2

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# �}�X�^�[�ɓ���ւ��

,SetFocus,tenshi	,
,ImageDef,tenshi,��1,0,0
����H\n���Ă�A�A���́H\,a,0,0
,ClearBalloon,tenshi


#�j���a���o��

,Function,"::battle.team[1].current.StageIn_Dash()"#���s�`�[������ʏォ��o��
,Sleep,90#�X���[�v���߁@�w�萔�l�t���[���҂��܂�

,Function,"::battle.Show_EnemyName()",#�G�l�[����\��
,Show,sinmyoumaru,-1280,	#�Ώۃt�F�C�X�\���J�n
,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,��1,0,0
�ŋ��̓�l��ڎw����[�I\,a,0,0
,ClearBalloon,sinmyoumaru

,Hide,sinmyoumaru,-1280,
,Function,"::battle.team[1].current.Team_Change_Slave(null)",#�X���C�u�ɓ���ւ��
,Sleep,30#�X���[�v���߁@�w�萔�l�t���[���҂��܂�

,Function,"::battle.Show_EnemySlaveName()",#�G�l�[����\��
,Show,usami2,-1280,	#�Ώۃt�F�C�X�\���J�n
,SetFocus,usami2	,
,ImageDef,usami2,��1,0,0
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
�O��̏��l��߂܂�����[\n���̃R���r��\n�ꐢ���r�����Ⴂ�܂���[\,a,0,0
,ClearBalloon,usami2

,Hide,usami2,-1280,
,Function,"::battle.team[1].current.Team_Change_Slave(null)",#�X���C�u�ɓ���ւ��

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,�]1,0,0
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
�ӂ��ӂ���\n�O���l�Ƃ̑�����\n����Ȃɗǂ��Ǝv��Ȃ������[�I\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# �X���C�u�ɓ���ւ��

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,��1,0,0
�Ȃ񂾂ƁH\n�N�����O�I\,a,0,0
,ClearBalloon,sinmyoumaru2

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,��1,0,0
�����H\n���O�����N���I\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# �}�X�^�[�ɓ���ւ��

,SetFocus,tenshi	,
,ImageDef,tenshi,��2,0,0
���l��������l\t[!?]\,a,0,0
,ClearBalloon,tenshi

# =====
,Hide,sinmyoumaru,-1280, &
,Function,"::battle.team[1].current.Team_Change_Slave(null)",		# �}�X�^�[�ɓ���ւ��

,SetFocus,usami2	,
,ImageDef,usami2,�{1,0,0
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
����H�@���l����l�E�E�E\n���������ăh�b�y���Q���K�[�H\,a,0,0
,ClearBalloon,usami2

# =====
,Hide,usami2,-1280, &
,Function,"::battle.team[1].current.Team_Change_Master(null)",		# �}�X�^�[�ɓ���ւ��

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# �X���C�u�ɓ���ւ��

,Function,"::sound.StopBGM(1000)",# BGM��~ 1000=��b�|���ăt�F�[�h�A�E�g

,Sleep,60

,Function,"::sound.PlayBGM(312)",# �w��BGM�Đ��J�n

,SetFocus,sinmyoumaru	,&
,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,�{1,0,0
,ImageDef,sinmyoumaru,�{1,0,0
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
�U�������ꂽ���[\n�������I\,b,0,0,
#,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru	,
�U���͂��������[�I\n���������\,b,0,0
,ClearBalloon,sinmyoumaru2

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# �}�X�^�[�ɓ���ւ��


#�S���t�F�C�X�P��
,Hide,tenshi,-1280,&	#�@&�łȂ��Ɓu�������I�����玟�֐i�ށv�n�̖��߂𓯎��Ɏ��s�\
,Hide,sinmyoumaru2,-1280,&�@#����͎l�l���̃t�F�C�X�摜�𓯎���1280�h�b�g�O�֌����ēP�������Ă��܂�
,Hide,sinmyoumaru,-1280,&�@#�@&�łȂ��Ȃ��ꍇ�A��l���t�F�C�X�摜���P�����Ă����܂�
,Hide,usami2,-1280,


,Sleep,60

,Function,"::battle.Battle_Ready()",# �ΐ�J�n����

,End	#��b�C�x���g���I��



# -------------------------------------------------------
# �v���C���[�s�k
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,tenshi,��1,0,0
,ImageDef,sinmyoumaru2,��1,0,0
,ImageDef,sinmyoumaru,��1,0,0
,ImageDef,usami2,�]1,0,0

,Show,tenshi,-1280	,&#�t�F�C�X�\���J�n(���݃t�F�C�X�̕\����SetFocus�ƕR�Â����Ă��邽�߁A��̓����o�����ł��Ȃ����߁A����Ή����܂�
,Show,sinmyoumaru,-1280	,&#�t�F�C�X�\���J�n

,SetFocus,tenshi	,
,SetFocus,sinmyoumaru	,
���������������j���ۂ��I\n������\,b,0,0
,ClearBalloon,sinmyoumaru

,Hide,tenshi,-1280,&	#�@&�łȂ��Ɓu�������I�����玟�֐i�ށv�n�̖��߂𓯎��Ɏ��s�\
,Hide,sinmyoumaru2,-1280,&�@#����͎l�l���̃t�F�C�X�摜�𓯎���1280�h�b�g�O�֌����ēP�������Ă��܂�
,Hide,sinmyoumaru,-1280,&�@#�@&�łȂ��Ȃ��ꍇ�A��l���t�F�C�X�摜���P�����Ă����܂�
,Hide,usami2,-1280,

,Sleep,30

,Function,"::battle.Continue()",# �ΐ�J�n����

,End

# -------------------------------------------------------
# �v���C���[����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

,Function,"if(::battle.team[0].current == ::battle.team[0].master )::battle.team[0].current.Team_Change_Slave(null)",

#�����\��ݒ�
,ImageDef,tenshi,��1,0,0
,ImageDef,sinmyoumaru2,��1,0,0
,ImageDef,sinmyoumaru,��1,0,0
,ImageDef,usami2,��1,0,0

#,Show,sinmyoumaru,-1280	,&#�t�F�C�X�\���J�n
#,Show,sinmyoumaru2,-1280	,&#�t�F�C�X�\���J�n

# =====

,Show,sinmyoumaru,-1280	,#�t�F�C�X�\���J�n
,Show,sinmyoumaru2,-1280	,#�t�F�C�X�\���J�n
,SetFocus,sinmyoumaru	,
,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,��1,0,0
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
�悵�������I\n���������������j���ۂ��I\,a,0,0
,ClearBalloon,sinmyoumaru2

,SetFocus,sinmyoumaru	,
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
���������A����Ȕ��ł́c�c\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# �}�X�^�[�ɓ���ւ��

,SetFocus,tenshi	,
,ImageDef,tenshi,��1,0,0
�Ȃ�Őj���ۂ���l�c�c\,a,0,0
,ClearBalloon,tenshi

,Hide,sinmyoumaru,-1280, &
,Function,"::battle.team[1].current.Team_Change_Slave(null)",		# �X���C�u�ɓ���ւ��

,SetFocus,usami2	,
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
�ǂ��������h�b�y���Q���K�[��\n���̐��E�̐j���ۂ�\,a,0,0
���������ڂɑ���������\n�悭�����\n�{�l�ł����������\,a,0,0
,ClearBalloon,usami2

,Hide,usami2,-1280, &
,Function,"::battle.team[1].current.Team_Change_Master(null)",		# �}�X�^�[�ɓ���ւ��

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,��1,0,0
�����͖{����[\,a,0,0
,ClearBalloon,sinmyoumaru

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# �X���C�u�ɓ���ւ��

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,��1,0,0
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
�U������������\n�������{����I\,a,0,0
,ClearBalloon,sinmyoumaru2

# =====
,Hide,sinmyoumaru2,-1280, &
,Function,"::battle.team[0].current.Team_Change_Master(null)",		# �}�X�^�[�ɓ���ւ��

,SetFocus,tenshi	,
,ImageDef,tenshi,��1,0,0
�܁A�ǂ����ł��ǂ���\n�������I�@���_�I\,a,0,0
,ClearBalloon,tenshi

# =====
,Hide,tenshi,-1280, &
,Function,"::battle.team[0].current.Team_Change_Slave(null)",		# �X���C�u�ɓ���ւ��

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,��1,0,0
�����������[�I\,a,0,0
,ClearBalloon,sinmyoumaru2

,SetFocus,sinmyoumaru	,
,ImageDef,sinmyoumaru,��1,0,0
#0�P�Q�R�S�T�U�V�W�X�O�P�Q�R�S
�A���[�H\n���̖��A�������܂Ŏ�����\n����Ă����悤�ȁc�c\,c,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru2	,
,ImageDef,sinmyoumaru2,�]1,0,0
�����ւ���\n����Ȗ󖳂��˂��A�U�������\,a,0,0
,ClearBalloon,sinmyoumaru2

,Function,"::sound.StopBGM(1500);"
,Function,"::battle.Go_NextStage();"

,Hide,tenshi,-1280,&	#�@&�łȂ��Ɓu�������I�����玟�֐i�ށv�n�̖��߂𓯎��Ɏ��s�\
,Hide,sinmyoumaru2,-1280,&�@#����͎l�l���̃t�F�C�X�摜�𓯎���1280�h�b�g�O�֌����ēP�������Ă��܂�
,Hide,sinmyoumaru,-1280,&�@#�@&�łȂ��Ȃ��ꍇ�A��l���t�F�C�X�摜���P�����Ă����܂�
,Hide,usami2,-1280,

,Sleep,60

,End

# -------------------------------------------------------
