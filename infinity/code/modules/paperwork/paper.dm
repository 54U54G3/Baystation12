/*
/obj/item/weapon/paper/reacengi
	name = "reactive engines guide"
	info = "<I>����� #03-A, ���������� ����������� �������� ����������� ���������� ����������. <br>������&#255; ���������&#255; �� ������������: <br>1) � ������ ����� ����� ������� �� ��� �������� ��� �������� ��������&#255;/���������&#255; ������ ������� �������. ��� ������ ������ �������. <br>2) ��� ����� ��������� �� ��������� ����� �� ��������� ���� ������. <br>3) � ������ ��, �� <b>�� ��������</b>.</i>"
*/

/obj/item/weapon/paper/roles_nuclear
	name = "black market"
	info = "<tt><center>������ � ������� �����</center><hr>��������&#255; ��������� ������ ��������, ���������� ���� ���������� ���� ������� ������������ �������� �� ������ �������� - ������� � ��������������. ������ ����� ���&#255; �������� ��� �������� ������� - �������, ����� ������ ���� ��������� ��������� �����������, ��������� ��� ��������. <b>������ � ����������� � �����������.</b><br><center>������</center><hr>�� ����������:<br>1) <b>��������� ������ ��������.</b> ��������� - ������, �����, ��������, ��� ���������. �� ������� �������� - �������� � ��������� ������� � ������� 1200 ������� ������ ������������. <br>2) <b>������� ������ ���������.</b> ��� ���������� �������� � �������� ������&#255; � ���������� � ����� ���. �� ������ �� 7000. <br>3) <b>������������ ��� ��������� �����������&#255; �� ������� ��������.</b> ��������� ������������ ����� ������� �����. <br>4) <b>�������� �� �� ������������ (���� �� ����).</b> ��������� ����� ������� �����. <br>5) <b>���������� ������.</b> ��� ���������� �������� � ������� �� ������� ������� ��������������&#255;. ����������� � ��&#255; ����������&#255; ������� ����� ���������&#255; ���� ���������� �����. <hr>�������� ��� �����������. �����.</tt>"

/obj/item/weapon/paper/liners_example_armor
	name = "armor"
	info = "������ ����� - armor � ���������� �����. ��������, armor 20 ����� ����� � ����� � 20."

/obj/item/weapon/paper/liners_example_guns
	name = "guns "
	info = "� ����� ���� 20 ��� �������� ��������. ������ - 0 ��. ��������� - 10 ��. �������� - 20 ��. ������ - 40 ��."

/obj/effect/landmark/corpse/guns_test_one
	name = "Armor 10"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_one)

/obj/effect/landmark/corpse/guns_test_two
	name = "Armor 20"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_two)

/obj/effect/landmark/corpse/guns_test_three
	name = "Armor 30"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_three)

/obj/effect/landmark/corpse/guns_test_four
	name = "Armor 40"
	corpse_outfits = list(/decl/hierarchy/outfit/guns_test_four)

/decl/hierarchy/outfit/guns_test_one
	name = OUTFIT_JOB_NAME("Armor 10")
	suit = /obj/item/clothing/suit/armor/vest/old/one

/decl/hierarchy/outfit/guns_test_two
	name = OUTFIT_JOB_NAME("Armor 20")
	suit = /obj/item/clothing/suit/armor/vest/old/two

/decl/hierarchy/outfit/guns_test_three
	name = OUTFIT_JOB_NAME("Armor 30")
	suit = /obj/item/clothing/suit/armor/vest/old/three

/decl/hierarchy/outfit/guns_test_four
	name = OUTFIT_JOB_NAME("Armor 40")
	suit = /obj/item/clothing/suit/armor/vest/old/four

/obj/item/clothing/suit/armor/vest/old/one //just realized these had never been removed
	name = "armor 10"
	armor = list(melee = 10, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/vest/old/two //just realized these had never been removed
	name = "armor 20"
	armor = list(melee = 20, bullet = 20, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/vest/old/three //just realized these had never been removed
	name = "armor 30"
	armor = list(melee = 30, bullet = 30, laser = 30, energy = 30, bomb = 30, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/vest/old/four //just realized these had never been removed
	name = "armor 40"
	armor = list(melee = 40, bullet = 40, laser = 40, energy = 40, bomb = 40, bio = 0, rad = 0)
