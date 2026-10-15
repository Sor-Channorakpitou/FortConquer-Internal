.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    .line 19
    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLogHistory()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->b:Z

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->b:Z

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    return-void
.end method

.method public static getLogHistory()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_1

    .line 92
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x1000

    if-gt v0, v1, :cond_2

    .line 94
    mul-int/lit16 v2, v0, 0x1000

    .line 95
    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x1000

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 97
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->b:Z

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3
    return-void
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    return v0
.end method

.method public static saveLogHistory(Z)V
    .locals 2
    .param p0, "save"    # Z

    .prologue
    .line 50
    .line 52
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->b:Z

    if-eqz p0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static setDebugEnabled(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 31
    const-string v0, "TapjoyLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableLogging: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->a:Z

    .line 33
    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/fv;->a(Z)V

    .line 34
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->b:Z

    if-eqz v0, :cond_1

    .line 163
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->a:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->b:Z

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/tapjoy/TapjoyLog;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    return-void
.end method
