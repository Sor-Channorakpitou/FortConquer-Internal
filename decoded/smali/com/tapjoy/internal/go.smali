.class public final Lcom/tapjoy/internal/go;
.super Lcom/tapjoy/internal/gm;
.source "SourceFile"


# static fields
.field public static final n:Lcom/tapjoy/internal/bo;


# instance fields
.field public a:Lcom/tapjoy/internal/gr;

.field public b:Lcom/tapjoy/internal/gr;

.field public c:Lcom/tapjoy/internal/gr;

.field public d:Landroid/graphics/Point;

.field public e:Lcom/tapjoy/internal/gr;

.field public f:Lcom/tapjoy/internal/gr;

.field public g:Ljava/lang/String;

.field public h:Lcom/tapjoy/internal/fj;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/Map;

.field public l:J

.field public m:Lcom/tapjoy/internal/gp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/tapjoy/internal/go$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/go$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/go;->n:Lcom/tapjoy/internal/bo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tapjoy/internal/gm;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/go;->i:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/go;->j:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/bt;)V
    .locals 6

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tapjoy/internal/gm;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/go;->i:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/go;->j:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    .line 56
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 57
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "frame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    .line 60
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v0, Lcom/tapjoy/internal/gr;->b:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gr;

    iput-object v0, p0, Lcom/tapjoy/internal/go;->a:Lcom/tapjoy/internal/gr;

    goto :goto_1

    .line 64
    :cond_0
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    sget-object v0, Lcom/tapjoy/internal/gr;->b:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gr;

    iput-object v0, p0, Lcom/tapjoy/internal/go;->b:Lcom/tapjoy/internal/gr;

    goto :goto_1

    .line 66
    :cond_1
    const-string v1, "close_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sget-object v0, Lcom/tapjoy/internal/gr;->b:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gr;

    iput-object v0, p0, Lcom/tapjoy/internal/go;->c:Lcom/tapjoy/internal/gr;

    goto :goto_1

    .line 68
    :cond_2
    const-string v1, "close_button_offset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Lcom/tapjoy/internal/bp;->a:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/tapjoy/internal/go;->d:Landroid/graphics/Point;

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    goto :goto_0

    .line 75
    :cond_5
    const-string v1, "creative"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 76
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    .line 77
    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 78
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    sget-object v0, Lcom/tapjoy/internal/gr;->b:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gr;

    iput-object v0, p0, Lcom/tapjoy/internal/go;->e:Lcom/tapjoy/internal/gr;

    goto :goto_2

    .line 81
    :cond_6
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    sget-object v0, Lcom/tapjoy/internal/gr;->b:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gr;

    iput-object v0, p0, Lcom/tapjoy/internal/go;->f:Lcom/tapjoy/internal/gr;

    goto :goto_2

    .line 84
    :cond_7
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_2

    .line 87
    :cond_8
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    goto/16 :goto_0

    .line 88
    :cond_9
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 89
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/go;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    :cond_a
    invoke-static {v0}, Lcom/tapjoy/internal/gj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 91
    invoke-static {v0, p1}, Lcom/tapjoy/internal/gj;->a(Ljava/lang/String;Lcom/tapjoy/internal/bt;)Lcom/tapjoy/internal/gj;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/go;->h:Lcom/tapjoy/internal/fj;

    goto/16 :goto_0

    .line 92
    :cond_b
    const-string v1, "mappings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 93
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    .line 94
    :goto_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 95
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 97
    iget-object v0, p0, Lcom/tapjoy/internal/go;->i:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/gn;->g:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/bt;->a(Ljava/util/List;Lcom/tapjoy/internal/bo;)V

    goto :goto_3

    .line 98
    :cond_c
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/tapjoy/internal/go;->j:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/gn;->g:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/bt;->a(Ljava/util/List;Lcom/tapjoy/internal/bo;)V

    goto :goto_3

    .line 101
    :cond_d
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_3

    .line 104
    :cond_e
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    goto/16 :goto_0

    .line 105
    :cond_f
    const-string v1, "meta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 106
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/go;->k:Ljava/util/Map;

    goto/16 :goto_0

    .line 107
    :cond_10
    const-string v1, "ttl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 108
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->q()D

    move-result-wide v0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tapjoy/internal/go;->l:J

    goto/16 :goto_0

    .line 110
    :cond_11
    const-string v1, "no_more_today"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 111
    sget-object v0, Lcom/tapjoy/internal/gp;->b:Lcom/tapjoy/internal/bo;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bt;->a(Lcom/tapjoy/internal/bo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gp;

    iput-object v0, p0, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    goto/16 :goto_0

    .line 113
    :cond_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto/16 :goto_0

    .line 116
    :cond_13
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    .line 118
    iget-object v0, p0, Lcom/tapjoy/internal/go;->g:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/go;->g:Ljava/lang/String;

    .line 131
    :cond_14
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/go;->c:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/go;->a:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/go;->e:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tapjoy/internal/go;->c:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/go;->b:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/go;->f:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/tapjoy/internal/go;->a:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tapjoy/internal/go;->a:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->b()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/go;->b:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/go;->b:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->b()V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/go;->c:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->b()V

    .line 149
    iget-object v0, p0, Lcom/tapjoy/internal/go;->e:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/go;->e:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->b()V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/go;->f:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/tapjoy/internal/go;->f:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->b()V

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    iget-object v0, v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    iget-object v0, v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->b()V

    .line 158
    :cond_4
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tapjoy/internal/go;->c:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/go;->c:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    iget-object v0, v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/go;->m:Lcom/tapjoy/internal/gp;

    iget-object v0, v0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/go;->b:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/go;->f:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/go;->b:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/go;->f:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/go;->a:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/go;->e:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/go;->a:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/go;->e:Lcom/tapjoy/internal/gr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
