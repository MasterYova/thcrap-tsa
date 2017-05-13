{
	"title": "東方天空璋　～ Hidden Star in Four Seasons",
	"formats": {
		"anm": "anm11",
		"msg": "msg11"
	},
	"binhacks": {
		"sprintf_msvcrt14_esp+34": {
			"title": "Safe Visual Studio 2015-style sprintf (esp+34)",
			"code": "e8[strings_vsprintf_msvcrt14]89442434"
		},
		"sprintf_msvcrt14_esp+3c": {
			"title": "Safe Visual Studio 2015-style sprintf (esp+3c)",
			"code": "e8[strings_vsprintf_msvcrt14]8944243c"
		},
		"sprintf_msvcrt14_ebp-10c": {
			"title": "Safe Visual Studio 2015-style sprintf (ebp-10c)",
			"code": "e8[strings_vsprintf_msvcrt14]8985f4feffff"
		},
		"music_title_prepare": {
			"code": "8b4c241c 51 31c0 50 50 50"
		},
		"th15_textbox_size": {
			"code": "51 e8[GetTextExtent] 83e81c 7302 31c0 f30f1097a4010000 f30f108fa0010000 8b8f84010000 c1e902 909090909090909090",
			"title": "Correct text length calculation for the TH15 variety of Fairy Wars-style text boxes"
		},
		"ruby_prepare": {
			"code": "Prepare Ruby offset calculation"
		}
	},
	"breakpoints": {
		"file_size": {
			"file_size": "eax",
			"file_name": "edi",
			"cavesize": "5"
		},
		"file_load": {
			"file_buffer": "eax",
			"stack_clear_size": "8",
			"cavesize": "5"
		},
		"file_loaded": {
			"cavesize": "5"
		},
		"update_poll": {
			"cavesize": "7"
		},
		"music_title": {
			"str": "ecx",
			"track": "eax",
			"format_id": "Music Room Numbered Title",
			"cavesize": "5"
		},
		"music_cmt#line": {
			"line_num": "eax",
			"cavesize": "5"
		},
		"music_cmt": {
			"str": "eax",
			"track": "edx",
			"format_id": "Music Room Note Title",
			"cavesize": "5"
		},
		"spell_id": {
			"spell_id": "eax",
			"cavesize": "8"
		},
		"spell_id#real": {
			"spell_id_real": "ebx",
			"cavesize": "9"
		},
		"spell_name": {
			"spell_name": "edi",
			"cavesize": "5"
		},
		"spell_id#result": {
			"spell_id_real": "esi",
			"spell_rank": "eax",
			"cavesize": "6"
		},
		"spell_name#result": {
			"spell_name": "eax",
			"cavesize": "7"
		},
		"ruby_offset": {
			"str": "esi",
			"offset": "eax",
			"cavesize": "5"
		}
	},
	"tsa_font_block": {
		"offset": 4,
		"min": 0,
		"max": 8
	}
}