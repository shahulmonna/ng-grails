<section id="contactUs" class="contact-parlex">
    <div class="parlex-back">
        <div class="container">

            <div class="row">
                <div class="heading text-center">
                    <!-- Heading -->
                    <h2>Contact Us</h2>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered.</p>
                </div>
            </div>

            <div class="row mrgn30">

                <form method="post" action="" id="contactfrm" role="form">

                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control"
                                   ng-model="guestName"
                                   name="name" id="name" placeholder="Enter name" title="Please enter your name (at least 2 characters)">
                            {{guestName}}
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" title="Please enter a valid email address">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label for="comments">Comments</label>
                            <textarea name="comment" class="form-control" id="comments" cols="3" rows="5" placeholder="Enter your message…" title="Please enter your message (at least 10 characters)"></textarea>
                        </div>
                        <button name="submit" type="submit" class="btn btn-lg btn-primary" id="submit">Submit</button>
                        <div class="result"></div>
                    </div>
                </form>
                <div class="col-sm-4">
                    <h4>Address:</h4>
                    <address>
                        WebThemez Company<br>
                        134 Stilla. Tae., 414515<br>
                        Leorislon, SA 02434-34534 USA
                        <br>
                    </address>
                    <h4>Phone:</h4>
                    <address>
                        12345-49589-2<br>
                    </address>
                </div>
            </div>
        </div>
        <!--/.container-->
    </div>
</section>