.class public final Lcom/tapjoy/internal/gl$p$a;
.super Lcom/tapjoy/internal/dl$a;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gl$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gl$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12977
    invoke-direct {p0}, Lcom/tapjoy/internal/dl$a;-><init>()V

    .line 13079
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    .line 13155
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    .line 13231
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    .line 12978
    return-void
.end method

.method static synthetic g()Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 12970
    new-instance v0, Lcom/tapjoy/internal/gl$p$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$p$a;-><init>()V

    return-object v0
.end method

.method private h()Lcom/tapjoy/internal/gl$p$a;
    .locals 2

    .prologue
    .line 12999
    new-instance v0, Lcom/tapjoy/internal/gl$p$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/gl$p$a;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p$a;->f()Lcom/tapjoy/internal/gl$p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gl$p$a;->a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 12970
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p$a;->h()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/gl$p$a;
    .locals 2

    .prologue
    .line 13035
    invoke-static {}, Lcom/tapjoy/internal/gl$p;->c()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13053
    :goto_0
    return-object p0

    .line 13036
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13037
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 13038
    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->b(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    .line 13041
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13042
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 13043
    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->c(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    .line 13046
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/gl$p;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13047
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 13048
    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->d(Lcom/tapjoy/internal/gl$p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    .line 13051
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    invoke-static {p1}, Lcom/tapjoy/internal/gl$p;->e(Lcom/tapjoy/internal/gl$p;)Lcom/tapjoy/internal/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dh;)Lcom/tapjoy/internal/dh;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 13124
    if-nez p1, :cond_0

    .line 13125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13127
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 13128
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    .line 13130
    return-object p0
.end method

.method public final synthetic b()Lcom/tapjoy/internal/dl$a;
    .locals 1

    .prologue
    .line 12970
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p$a;->h()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 13200
    if-nez p1, :cond_0

    .line 13201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13203
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 13204
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    .line 13206
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tapjoy/internal/gl$p$a;
    .locals 1

    .prologue
    .line 13276
    if-nez p1, :cond_0

    .line 13277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13279
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 13280
    iput-object p1, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    .line 13282
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12970
    invoke-direct {p0}, Lcom/tapjoy/internal/gl$p$a;->h()Lcom/tapjoy/internal/gl$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 13057
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lcom/tapjoy/internal/gl$p;
    .locals 2

    .prologue
    .line 13007
    invoke-virtual {p0}, Lcom/tapjoy/internal/gl$p$a;->f()Lcom/tapjoy/internal/gl$p;

    move-result-object v0

    .line 13008
    invoke-virtual {v0}, Lcom/tapjoy/internal/gl$p;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13009
    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    throw v0

    .line 13011
    :cond_0
    return-object v0
.end method

.method public final f()Lcom/tapjoy/internal/gl$p;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13015
    new-instance v2, Lcom/tapjoy/internal/gl$p;

    invoke-direct {v2, p0, v1}, Lcom/tapjoy/internal/gl$p;-><init>(Lcom/tapjoy/internal/dl$a;B)V

    .line 13016
    iget v3, p0, Lcom/tapjoy/internal/gl$p$a;->b:I

    .line 13018
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 13021
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$p$a;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$p;->a(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13022
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 13023
    or-int/lit8 v0, v0, 0x2

    .line 13025
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/internal/gl$p$a;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$p;->b(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13026
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 13027
    or-int/lit8 v0, v0, 0x4

    .line 13029
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/internal/gl$p$a;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tapjoy/internal/gl$p;->c(Lcom/tapjoy/internal/gl$p;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13030
    invoke-static {v2, v0}, Lcom/tapjoy/internal/gl$p;->a(Lcom/tapjoy/internal/gl$p;I)I

    .line 13031
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method
