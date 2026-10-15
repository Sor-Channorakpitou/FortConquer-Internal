.class public final Lcom/tapjoy/internal/gf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final A:Lcom/tapjoy/internal/j;

.field final B:Lcom/tapjoy/internal/j;

.field final a:Landroid/content/Context;

.field final b:Landroid/content/SharedPreferences;

.field final c:Lcom/tapjoy/internal/q;

.field final d:Lcom/tapjoy/internal/q;

.field final e:Lcom/tapjoy/internal/m;

.field final f:Lcom/tapjoy/internal/m;

.field final g:Lcom/tapjoy/internal/q;

.field final h:Lcom/tapjoy/internal/m;

.field final i:Lcom/tapjoy/internal/n;

.field final j:Lcom/tapjoy/internal/n;

.field final k:Lcom/tapjoy/internal/n;

.field final l:Lcom/tapjoy/internal/q;

.field final m:Lcom/tapjoy/internal/m;

.field final n:Lcom/tapjoy/internal/k;

.field final o:Lcom/tapjoy/internal/n;

.field final p:Lcom/tapjoy/internal/k;

.field final q:Lcom/tapjoy/internal/q;

.field final r:Lcom/tapjoy/internal/q;

.field final s:Lcom/tapjoy/internal/m;

.field final t:Lcom/tapjoy/internal/m;

.field final u:Lcom/tapjoy/internal/q;

.field final v:Lcom/tapjoy/internal/q;

.field final w:Lcom/tapjoy/internal/q;

.field final x:Lcom/tapjoy/internal/q;

.field final y:Lcom/tapjoy/internal/q;

.field final z:Lcom/tapjoy/internal/q;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/tapjoy/internal/gf;->a:Landroid/content/Context;

    .line 115
    const-string v1, "fiverocks"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    .line 117
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "sdk"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->c:Lcom/tapjoy/internal/q;

    .line 119
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "ir"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->d:Lcom/tapjoy/internal/q;

    .line 120
    new-instance v0, Lcom/tapjoy/internal/m;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "fql"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/m;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->e:Lcom/tapjoy/internal/m;

    .line 121
    new-instance v0, Lcom/tapjoy/internal/m;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "fq"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/m;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->f:Lcom/tapjoy/internal/m;

    .line 122
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "push"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->g:Lcom/tapjoy/internal/q;

    .line 124
    new-instance v0, Lcom/tapjoy/internal/m;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "ss"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/m;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->h:Lcom/tapjoy/internal/m;

    .line 125
    new-instance v0, Lcom/tapjoy/internal/n;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "std"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/n;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->i:Lcom/tapjoy/internal/n;

    .line 126
    new-instance v0, Lcom/tapjoy/internal/n;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "slt"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/n;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->j:Lcom/tapjoy/internal/n;

    .line 127
    new-instance v0, Lcom/tapjoy/internal/n;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "sld"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/n;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->k:Lcom/tapjoy/internal/n;

    .line 129
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "ptc"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->l:Lcom/tapjoy/internal/q;

    .line 130
    new-instance v0, Lcom/tapjoy/internal/m;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "pc"

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/m;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->m:Lcom/tapjoy/internal/m;

    .line 131
    new-instance v0, Lcom/tapjoy/internal/k;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "ptp"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/k;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->n:Lcom/tapjoy/internal/k;

    .line 132
    new-instance v0, Lcom/tapjoy/internal/n;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "lpt"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/n;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->o:Lcom/tapjoy/internal/n;

    .line 133
    new-instance v0, Lcom/tapjoy/internal/k;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "plp"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/k;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->p:Lcom/tapjoy/internal/k;

    .line 135
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "adv"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->q:Lcom/tapjoy/internal/q;

    .line 136
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "ui"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->r:Lcom/tapjoy/internal/q;

    .line 137
    new-instance v0, Lcom/tapjoy/internal/m;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "ul"

    invoke-direct {v0, v1, v2, v4}, Lcom/tapjoy/internal/m;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->s:Lcom/tapjoy/internal/m;

    .line 139
    new-instance v0, Lcom/tapjoy/internal/m;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "uf"

    invoke-direct {v0, v1, v2, v4}, Lcom/tapjoy/internal/m;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->t:Lcom/tapjoy/internal/m;

    .line 142
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "uv1"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->u:Lcom/tapjoy/internal/q;

    .line 143
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "uv2"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->v:Lcom/tapjoy/internal/q;

    .line 144
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "uv3"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->w:Lcom/tapjoy/internal/q;

    .line 145
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "uv4"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->x:Lcom/tapjoy/internal/q;

    .line 146
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "uv5"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->y:Lcom/tapjoy/internal/q;

    .line 148
    new-instance v0, Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "idfa"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/q;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->z:Lcom/tapjoy/internal/q;

    .line 149
    new-instance v0, Lcom/tapjoy/internal/j;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "idfa.optout"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/j;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->A:Lcom/tapjoy/internal/j;

    .line 151
    new-instance v0, Lcom/tapjoy/internal/j;

    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v2, "push.optout"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/j;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gf;->B:Lcom/tapjoy/internal/j;

    .line 152
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/tapjoy/internal/gf;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method final a()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "ir"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    .line 180
    goto :goto_0

    .line 184
    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/tapjoy/internal/gf;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/internal/fv;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "referrer"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    :try_start_0
    sget-object v3, Lcom/tapjoy/internal/aq;->c:Ljava/nio/charset/Charset;

    invoke-static {v1, v3}, Lcom/tapjoy/internal/bm;->a(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "ir"

    if-eqz v0, :cond_5

    move-object v1, v0

    :goto_2
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_4
    move-object v0, v2

    goto :goto_0

    .line 193
    :cond_5
    const-string v1, ""

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method
