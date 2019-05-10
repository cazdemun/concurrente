#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC P */
	case 3: // STATE 1 - diningroom.pml:17 - [printf('Think P%d\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("Think P%d\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - diningroom.pml:18 - [((room<4))] (7:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.room)<4)))
			continue;
		/* merge: room = (room+1)(0, 3, 7) */
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.room);
		now.room = (((int)now.room)+1);
#ifdef VAR_RANGES
		logval("room", ((int)now.room));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 5: // STATE 5 - diningroom.pml:19 - [((fork[_pid]>0))] (10:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ])>0)))
			continue;
		/* merge: fork[_pid] = (fork[_pid]-1)(0, 6, 10) */
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = (((int)now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ])-1);
#ifdef VAR_RANGES
		logval("fork[_pid]", ((int)now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 6: // STATE 8 - diningroom.pml:20 - [((fork[((_pid+1)%N)]>0))] (12:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%now.N), 5) ])>0)))
			continue;
		/* merge: fork[((_pid+1)%N)] = (fork[((_pid+1)%N)]-1)(12, 9, 12) */
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%now.N), 5) ]);
		now.fork[ Index(((((P0 *)_this)->_pid+1)%now.N), 5) ] = (((int)now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%now.N), 5) ])-1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%N)]", ((int)now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%now.N), 5) ]));
#endif
		;
		/* merge: printf('Eat P%d\\n',_pid)(12, 11, 12) */
		reached[0][11] = 1;
		Printf("Eat P%d\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 12 - diningroom.pml:22 - [fork[_pid] = (fork[_pid]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = (((int)now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ])+1);
#ifdef VAR_RANGES
		logval("fork[_pid]", ((int)now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - diningroom.pml:23 - [fork[((_pid+1)%N)] = (fork[((_pid+1)%N)]+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%now.N), 5) ]);
		now.fork[ Index(((((P0 *)_this)->_pid+1)%now.N), 5) ] = (((int)now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%now.N), 5) ])+1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%N)]", ((int)now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%now.N), 5) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 14 - diningroom.pml:24 - [room = (room-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.room);
		now.room = (((int)now.room)-1);
#ifdef VAR_RANGES
		logval("room", ((int)now.room));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 18 - diningroom.pml:40 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

