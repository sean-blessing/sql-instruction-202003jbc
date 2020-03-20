select * from movie;
select * from actor;
select * from credit;

-- this is a single line comment
/* this is a block comment
   and will continue until I stop it...
*/ 

/* query all credits, showing movie title
   year, actor name and role */
select movie.title, movie.year, credit.role, 
	concat(actor.FirstName, " ", actor.LastName) as 'actor name'
  from movie
  join credit
    on movie.ID = credit.MovieID
  join actor
    on actor.ID = credit.ActorID;

-- Left join Movie - Credit
select movie.title, movie.year, credit.role
  from movie
  left join credit
    on movie.ID = credit.MovieID;
