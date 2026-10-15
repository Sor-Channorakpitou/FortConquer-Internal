.class public final Lcom/tapjoy/internal/ga;
.super Lcom/tapjoy/internal/gc;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/fv;

.field final b:Ljava/lang/String;

.field final c:Lcom/tapjoy/internal/go;

.field d:J

.field public e:Lcom/tapjoy/internal/fq;

.field f:Z

.field g:Z

.field private i:Z

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fv;Ljava/lang/String;Lcom/tapjoy/internal/go;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tapjoy/internal/gc;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ga;->g:Z

    .line 55
    iput-object p1, p0, Lcom/tapjoy/internal/ga;->a:Lcom/tapjoy/internal/fv;

    .line 56
    iput-object p2, p0, Lcom/tapjoy/internal/ga;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    .line 58
    iput-object p4, p0, Lcom/tapjoy/internal/ga;->j:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 220
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const-string v1, "tapjoy:hardwareAccelerated"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 237
    invoke-static {p1}, Lcom/tapjoy/internal/cv;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    invoke-virtual {v0}, Lcom/tapjoy/internal/go;->c()V

    .line 71
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/fw;)V
    .locals 13

    .prologue
    const v12, 0x3e99999a    # 0.3f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v11, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 80
    iget-boolean v0, p0, Lcom/tapjoy/internal/ga;->i:Z

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    move v0, v6

    goto :goto_0

    .line 81
    :cond_1
    iput-boolean v7, p0, Lcom/tapjoy/internal/ga;->i:Z

    .line 85
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->j:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    .line 93
    :goto_1
    new-instance v2, Lcom/tapjoy/internal/e;

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/e;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/tapjoy/internal/ga$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/ga$1;-><init>(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/fw;)V

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 100
    new-instance v0, Lcom/tapjoy/internal/ga$2;

    invoke-direct {v0, p0, v3, p1}, Lcom/tapjoy/internal/ga$2;-><init>(Lcom/tapjoy/internal/ga;Landroid/app/Activity;Lcom/tapjoy/internal/fw;)V

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/e;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    invoke-virtual {v2, v6}, Lcom/tapjoy/internal/e;->setCanceledOnTouchOutside(Z)V

    .line 127
    new-instance v8, Lcom/tapjoy/internal/hb;

    iget-object v9, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    new-instance v0, Lcom/tapjoy/internal/ga$3;

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/internal/ga$3;-><init>(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/e;Landroid/app/Activity;Landroid/app/Activity;Lcom/tapjoy/internal/fw;)V

    invoke-direct {v8, v3, v9, v0}, Lcom/tapjoy/internal/hb;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/go;Lcom/tapjoy/internal/hb$a;)V

    .line 158
    new-instance v1, Lcom/tapjoy/internal/ha;

    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    invoke-direct {v1, v3, v0, v8}, Lcom/tapjoy/internal/ha;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/go;Lcom/tapjoy/internal/hb;)V

    .line 161
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x11

    invoke-direct {v4, v5, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/e;->setContentView(Landroid/view/View;)V

    .line 168
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    const-string v4, "4.1.2"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/internal/ga;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v6

    :goto_2
    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/tapjoy/internal/aj$a;->b:Lcom/tapjoy/internal/aj$a;

    new-instance v4, Lcom/tapjoy/internal/ak;

    invoke-direct {v4}, Lcom/tapjoy/internal/ak;-><init>()V

    sget-object v5, Lcom/tapjoy/internal/aj$1;->a:[I

    invoke-virtual {v0}, Lcom/tapjoy/internal/aj$a;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    :goto_3
    invoke-virtual {v4}, Lcom/tapjoy/internal/ak;->b()Lcom/tapjoy/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/aj;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/ha;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lcom/tapjoy/internal/e;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-virtual {v2}, Lcom/tapjoy/internal/e;->a()V

    .line 184
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v2}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 189
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/ga;->d:J

    .line 190
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->a:Lcom/tapjoy/internal/fv;

    iget-object v1, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    iget-object v1, v1, Lcom/tapjoy/internal/go;->k:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fv;->a(Ljava/util/Map;)V

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/fw;->c(Ljava/lang/String;)V

    .line 192
    :goto_4
    return-void

    .line 89
    :cond_4
    invoke-static {}, Lcom/tapjoy/internal/fp;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/c;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v3

    goto/16 :goto_1

    .line 168
    :cond_5
    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v0, v4, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_6
    move v0, v7

    goto :goto_2

    .line 169
    :pswitch_0
    new-instance v0, Lcom/tapjoy/internal/am;

    invoke-direct {v0}, Lcom/tapjoy/internal/am;-><init>()V

    iput-boolean v6, v0, Lcom/tapjoy/internal/am;->a:Z

    const/high16 v5, 0x42700000    # 60.0f

    iput v5, v0, Lcom/tapjoy/internal/am;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/am;->a()Lcom/tapjoy/internal/al;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v5, v11, v10, v11, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Lcom/tapjoy/internal/an;

    invoke-direct {v5}, Lcom/tapjoy/internal/an;-><init>()V

    invoke-virtual {v5, v10}, Lcom/tapjoy/internal/an;->a(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/tapjoy/internal/an;->b(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/internal/an;->a()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    goto/16 :goto_3

    :pswitch_1
    new-instance v0, Lcom/tapjoy/internal/am;

    invoke-direct {v0}, Lcom/tapjoy/internal/am;-><init>()V

    iput-boolean v6, v0, Lcom/tapjoy/internal/am;->a:Z

    const/high16 v5, -0x3d900000    # -60.0f

    iput v5, v0, Lcom/tapjoy/internal/am;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/am;->a()Lcom/tapjoy/internal/al;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v5, v11, v10, v11, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Lcom/tapjoy/internal/an;

    invoke-direct {v5}, Lcom/tapjoy/internal/an;-><init>()V

    const v8, -0x41333333    # -0.4f

    invoke-virtual {v5, v8}, Lcom/tapjoy/internal/an;->a(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/tapjoy/internal/an;->b(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/internal/an;->a()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    goto/16 :goto_3

    :pswitch_2
    new-instance v0, Lcom/tapjoy/internal/am;

    invoke-direct {v0}, Lcom/tapjoy/internal/am;-><init>()V

    iput-boolean v7, v0, Lcom/tapjoy/internal/am;->a:Z

    const/high16 v5, -0x3d900000    # -60.0f

    iput v5, v0, Lcom/tapjoy/internal/am;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/am;->a()Lcom/tapjoy/internal/al;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v5, v11, v10, v11, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Lcom/tapjoy/internal/an;

    invoke-direct {v5}, Lcom/tapjoy/internal/an;-><init>()V

    invoke-virtual {v5, v12}, Lcom/tapjoy/internal/an;->a(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/tapjoy/internal/an;->b(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/internal/an;->a()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    goto/16 :goto_3

    :pswitch_3
    new-instance v0, Lcom/tapjoy/internal/am;

    invoke-direct {v0}, Lcom/tapjoy/internal/am;-><init>()V

    iput-boolean v7, v0, Lcom/tapjoy/internal/am;->a:Z

    const/high16 v5, 0x42700000    # 60.0f

    iput v5, v0, Lcom/tapjoy/internal/am;->b:F

    invoke-virtual {v0}, Lcom/tapjoy/internal/am;->a()Lcom/tapjoy/internal/al;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v5, v11, v10, v11, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    move-result-object v0

    new-instance v5, Lcom/tapjoy/internal/an;

    invoke-direct {v5}, Lcom/tapjoy/internal/an;-><init>()V

    invoke-virtual {v5, v12}, Lcom/tapjoy/internal/an;->a(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    const v8, -0x41333333    # -0.4f

    invoke-virtual {v5, v8}, Lcom/tapjoy/internal/an;->b(F)Lcom/tapjoy/internal/an;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/internal/an;->a()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/ak;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/ak;

    goto/16 :goto_3

    .line 177
    :catch_0
    move-exception v0

    const-string v0, "Failed to show the content for \"{}\" caused by invalid activity"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/internal/ga;->b:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fs;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tapjoy/internal/ga;->c:Lcom/tapjoy/internal/go;

    invoke-virtual {v0}, Lcom/tapjoy/internal/go;->d()Z

    move-result v0

    return v0
.end method
