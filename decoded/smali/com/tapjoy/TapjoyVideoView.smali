.class public Lcom/tapjoy/TapjoyVideoView;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyVideoView$b;,
        Lcom/tapjoy/TapjoyVideoView$a;
    }
.end annotation


# static fields
.field private static F:I

.field private static u:Z

.field private static v:Z

.field private static w:Lcom/tapjoy/OldTapjoyVideoData;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:Landroid/widget/ImageView;

.field private G:I

.field private H:I

.field private I:Z

.field a:Landroid/app/Dialog;

.field b:Ljava/util/Timer;

.field final c:Landroid/os/Handler;

.field final d:Ljava/lang/Runnable;

.field private e:Landroid/widget/VideoView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Lcom/tapjoy/TapjoyVideoView$b;

.field private o:Ljava/util/HashMap;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->u:Z

    .line 70
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->v:Z

    .line 95
    const/16 v0, 0xf

    sput v0, Lcom/tapjoy/TapjoyVideoView;->F:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    .line 47
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    .line 48
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    .line 49
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->i:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->j:Ljava/lang/String;

    .line 52
    const-string v0, "Currency will not be awarded, are you sure you want to cancel the video?"

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->k:Ljava/lang/String;

    .line 53
    const-string v0, "A network connection is necessary to view videos. You will be able to complete the offer and receive your reward on the next connect."

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->l:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->o:Ljava/util/HashMap;

    .line 59
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->p:Z

    .line 60
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->q:Z

    .line 61
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->r:Z

    .line 62
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->s:Z

    .line 64
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->t:Z

    .line 67
    iput-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    .line 74
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    .line 78
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->y:Z

    .line 79
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->z:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->A:Z

    .line 81
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->B:Z

    .line 82
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->C:I

    .line 83
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    .line 97
    const/16 v0, 0x32

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->G:I

    .line 98
    const/4 v0, -0x5

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->c:Landroid/os/Handler;

    .line 103
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->I:Z

    .line 639
    new-instance v0, Lcom/tapjoy/TapjoyVideoView$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideoView$3;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->d:Ljava/lang/Runnable;

    .line 879
    return-void
.end method

.method static synthetic a()Lcom/tapjoy/OldTapjoyVideoData;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 564
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 566
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 567
    if-eqz v0, :cond_1

    .line 568
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 570
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 571
    if-eqz v4, :cond_0

    .line 574
    const-string v5, "[TIMESTAMP]"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 575
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/tapjoy/TapjoyVideoView$2;

    invoke-direct {v6, p0, v4, p1}, Lcom/tapjoy/TapjoyVideoView$2;-><init>(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    const-string v0, "VideoView"

    const-string v1, "Bad video tracking urls array"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 546
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 547
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 548
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 549
    const-string v1, "result_string1"

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v1, "result_string2"

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    :cond_0
    const-string v1, "callback_id"

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "callback_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/TapjoyVideoView;->setResult(ILandroid/content/Intent;)V

    .line 554
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->finish()V

    .line 555
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Z

    return v0
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyVideoView;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 369
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 370
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 372
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    .line 378
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 379
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 380
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 383
    sget-boolean v0, Lcom/tapjoy/TapjoyVideoView;->v:Z

    if-eqz v0, :cond_3

    .line 385
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "streaming video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 394
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 395
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 396
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->C:I

    .line 403
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoView.getDuration(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeRemaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 408
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    sget v1, Lcom/tapjoy/TapjoyVideoView;->F:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 409
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    const-string v1, "#535256"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    const-string v1, "default"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 412
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Landroid/widget/ImageView;

    .line 413
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 416
    const-string v0, "countdown_image.png"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyUtil;->loadBitmapFromJar(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->E:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 422
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 424
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 425
    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 426
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->E:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->G:I

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->G:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 431
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 432
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 433
    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    invoke-virtual {v0, v1, v6, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    .line 437
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 438
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    sget v1, Lcom/tapjoy/TapjoyVideoView;->F:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    const-string v1, "default"

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 441
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->G:I

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 445
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->E:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 446
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 447
    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 449
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    const-string v0, "VideoView"

    const-string v1, "dialog is showing -- don\'t start"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->d()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$a;

    invoke-direct {v1, p0, v6}, Lcom/tapjoy/TapjoyVideoView$a;-><init>(Lcom/tapjoy/TapjoyVideoView;B)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iput-boolean v6, p0, Lcom/tapjoy/TapjoyVideoView;->z:Z

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->y:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$1;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v6, p0, Lcom/tapjoy/TapjoyVideoView;->y:Z

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 458
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 459
    return-void

    .line 390
    :cond_3
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cached video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_4
    const-string v0, "VideoView"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->videoStart()V

    goto :goto_1
.end method

.method static synthetic c(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 464
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->B:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, v3}, Lcom/tapjoy/TapjoyVideoView;->a(Z)V

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    const-string v1, "view_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 472
    const-string v1, "url"

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "legacy_view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 475
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyVideoView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 919
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Z

    return v0
.end method

.method static synthetic f(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->p:Z

    return v0
.end method

.method static synthetic i(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Z

    return v0
.end method

.method static synthetic j(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->q:Z

    return v0
.end method

.method static synthetic k(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->r:Z

    return v0
.end method

.method static synthetic l(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->r:Z

    return v0
.end method

.method static synthetic m(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->z:Z

    return v0
.end method

.method static synthetic n(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    return v0
.end method

.method static synthetic o(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->a(Z)V

    return-void
.end method


# virtual methods
.method public convertToDp(I)I
    .locals 2
    .param p1, "input"    # I

    .prologue
    .line 239
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 345
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult requestCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    if-eqz p3, :cond_4

    .line 350
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 352
    :goto_0
    if-eqz v1, :cond_0

    const-string v0, "result"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "offer_wall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->a(Z)V

    .line 365
    :cond_2
    :goto_1
    return-void

    .line 361
    :cond_3
    const-string v1, "tjvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->b()V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 718
    const-string v0, "VideoView"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->d()V

    .line 722
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->c()V

    .line 724
    sget-boolean v0, Lcom/tapjoy/TapjoyVideoView;->u:Z

    if-nez v0, :cond_0

    .line 726
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->videoComplete()V

    .line 727
    const-string v0, "complete"

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$4;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$4;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 741
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->u:Z

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->t:Z

    .line 743
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    const-string v0, "VideoView"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 113
    if-eqz p1, :cond_0

    .line 115
    const-string v0, "VideoView"

    const-string v1, "*** Loading saved data from bundle ***"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "seek_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    .line 117
    const-string v0, "dialog_showing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_7

    .line 125
    const-string v0, "VIDEO_URL"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/tapjoy/OldTapjoyVideoData;

    invoke-direct {v0}, Lcom/tapjoy/OldTapjoyVideoData;-><init>()V

    .line 129
    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/OldTapjoyVideoData;->setVideoURL(Ljava/lang/String;)V

    .line 131
    const-string v0, "VIDEO_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "VIDEO_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->j:Ljava/lang/String;

    .line 134
    :cond_1
    const-string v0, "VIDEO_DATA"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const-string v0, "VIDEO_DATA"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/OldTapjoyVideoData;

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    .line 138
    :cond_2
    const-string v0, "CACHED_VIDEO_LOCATION"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    const-string v2, "CACHED_VIDEO_LOCATION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/OldTapjoyVideoData;->setLocalFilePath(Ljava/lang/String;)V

    .line 142
    :cond_3
    const-string v0, "VIDEO_ALLOW_BACK_BUTTON"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    const-string v0, "VIDEO_ALLOW_BACK_BUTTON"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->A:Z

    .line 146
    :cond_4
    const-string v0, "VIDEO_CANCEL_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    const-string v0, "VIDEO_CANCEL_MESSAGE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->k:Ljava/lang/String;

    .line 150
    :cond_5
    const-string v0, "VIDEO_SHOULD_DISMISS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    const-string v0, "VIDEO_SHOULD_DISMISS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->B:Z

    .line 154
    :cond_6
    const-string v0, "VIDEO_TRACKING_URLS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    const-string v0, "VIDEO_TRACKING_URLS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->o:Ljava/util/HashMap;

    .line 159
    :cond_7
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialogShowing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    if-eqz v0, :cond_e

    .line 164
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0}, Lcom/tapjoy/OldTapjoyVideoData;->getClickURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 165
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyVideoView;->y:Z

    .line 166
    :cond_8
    sput-boolean v4, Lcom/tapjoy/TapjoyVideoView;->v:Z

    .line 169
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v0

    if-nez v0, :cond_9

    .line 171
    const-string v0, "VideoView"

    const-string v1, "null video"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v4}, Lcom/tapjoy/TapjoyVideoView;->a(Z)V

    .line 236
    :goto_0
    return-void

    .line 177
    :cond_9
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0}, Lcom/tapjoy/OldTapjoyVideoData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0}, Lcom/tapjoy/OldTapjoyVideoData;->getWebviewURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->i:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 183
    :cond_a
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Playing video at location:: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getVideoURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->w:Lcom/tapjoy/OldTapjoyVideoData;

    invoke-virtual {v0}, Lcom/tapjoy/OldTapjoyVideoData;->getVideoURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    .line 185
    sput-boolean v3, Lcom/tapjoy/TapjoyVideoView;->v:Z

    .line 188
    :cond_b
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_c
    :goto_1
    invoke-virtual {p0, v3}, Lcom/tapjoy/TapjoyVideoView;->requestWindowFeature(I)Z

    .line 202
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    .line 203
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->setContentView(Landroid/view/View;)V

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_d

    .line 210
    new-instance v0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v0

    .line 214
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceScreenLayoutSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 220
    const/16 v0, 0x20

    sput v0, Lcom/tapjoy/TapjoyVideoView;->F:I

    .line 224
    :cond_d
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->G:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->convertToDp(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->G:I

    .line 225
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->convertToDp(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->H:I

    .line 228
    new-instance v0, Lcom/tapjoy/TapjoyVideoView$b;

    invoke-direct {v0, p0, v4}, Lcom/tapjoy/TapjoyVideoView$b;-><init>(Lcom/tapjoy/TapjoyVideoView;B)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->n:Lcom/tapjoy/TapjoyVideoView$b;

    .line 229
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->n:Lcom/tapjoy/TapjoyVideoView$b;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyVideoView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->b()V

    .line 233
    const-string v0, "VideoView"

    const-string v1, "onCreate DONE"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->viewDidOpen(I)V

    goto/16 :goto_0

    .line 192
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 194
    sput-boolean v3, Lcom/tapjoy/TapjoyVideoView;->v:Z

    .line 195
    iput-boolean v4, p0, Lcom/tapjoy/TapjoyVideoView;->y:Z

    .line 197
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playing video only: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 787
    const-string v0, "VideoView"

    const-string v1, "dialog onCreateDialog"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    .line 873
    :goto_0
    return-object v0

    .line 794
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    .line 873
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    goto :goto_0

    .line 797
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Cancel Video?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "End"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$6;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$6;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Resume"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$5;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$5;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    .line 824
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$7;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$7;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 839
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 840
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    goto :goto_1

    .line 843
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Network Connection Lost"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Okay"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$8;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$8;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    .line 856
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$9;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$9;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 867
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 868
    iput-boolean v3, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    goto :goto_1

    .line 794
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->n:Lcom/tapjoy/TapjoyVideoView$b;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->n:Lcom/tapjoy/TapjoyVideoView$b;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->n:Lcom/tapjoy/TapjoyVideoView$b;

    .line 295
    :cond_0
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewWillClose(I)V

    .line 296
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(I)V

    .line 298
    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    .line 697
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onError, what: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->u:Z

    .line 701
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/tapjoy/TapjoyVideo;->videoError(I)V

    .line 703
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->d()V

    .line 707
    if-ne p2, v0, :cond_0

    const/16 v1, -0x3ec

    if-ne p3, v1, :cond_0

    .line 711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->s:Z

    if-eqz v0, :cond_0

    .line 899
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 902
    const-string v0, "stall"

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)V

    .line 909
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 904
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 906
    const-string v0, "resume"

    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 748
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 750
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->t:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/tapjoy/TapjoyVideoView;->u:Z

    if-eqz v1, :cond_2

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 753
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 755
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->d()V

    .line 757
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->c()V

    .line 781
    :cond_1
    :goto_0
    return v0

    .line 761
    :cond_2
    sget-boolean v1, Lcom/tapjoy/TapjoyVideoView;->u:Z

    if-nez v1, :cond_3

    .line 762
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->A:Z

    if-eqz v1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->k:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 767
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    .line 768
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 770
    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    .line 771
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 773
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PAUSE VIDEO time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentPosition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", elapsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 781
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 248
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "VideoView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 253
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    .line 254
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 689
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 690
    const-string v0, "VideoView"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 262
    const-string v0, "VideoView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->setRequestedOrientation(I)V

    .line 269
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    if-lez v0, :cond_1

    .line 271
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 276
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 281
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    const-string v0, "VideoView"

    const-string v1, "*** onSaveInstanceState ***"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialogShowing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "dialog_showing"

    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    const-string v0, "seek_time"

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->D:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 304
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isAutoSessionTrackingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:Z

    .line 306
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fv;->a(Landroid/app/Activity;)V

    .line 308
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->I:Z

    .line 315
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fv;->b(Landroid/app/Activity;)V

    .line 317
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 318
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 335
    const-string v0, "VideoView"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 337
    return-void
.end method
