.class final Lcom/tapjoy/internal/fx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fx;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.senderIds"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 106
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.appVersion"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    .line 107
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 126
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServerExpirationTime"

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 76
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.senderIds"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 96
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.stale"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    .line 97
    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.regId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 141
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.backoff"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    .line 142
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.regId"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    return-void
.end method

.method public final b(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 116
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServer"

    invoke-static {v0, v1, p2}, Lcom/tapjoy/internal/p;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    .line 117
    return-void
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 91
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.stale"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 101
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.appVersion"

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 111
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 121
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.onServerExpirationTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 136
    invoke-static {p1}, Lcom/tapjoy/internal/gf;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gf;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->b:Landroid/content/SharedPreferences;

    const-string v1, "gcm.backoff"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
