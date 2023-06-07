
<div>
<form action="{{ route('store')}}" method="post">
    @csrf
  <div class="form-group">
    <label for="day">day</label>
    <input type="text" name="day" class="form-control" id="day" placeholder="day">
  </div>
  <div class="form-group">
    <label for="user_id">User_id</label>
    <textarea name="user_id"  class="form-control" id="user_id" placeholder="user_id"></textarea>
  </div>
  <div class="form-group">
    <label for="note">Note</label>
    <input name="note" type="text" class="form-control" id="note" placeholder="note">
  </div>


  <button type="submit" class="btn btn-primary">Create</button>
</form>
</div>