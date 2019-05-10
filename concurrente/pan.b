	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC P */
;
		;
		
	case 4: // STATE 3
		;
		now.room = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 6
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 9
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%now.N), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 12
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 13
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%now.N), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 14
		;
		now.room = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;
	}

