.class Lcom/tapjoy/internal/et;
.super Lcom/tapjoy/internal/fh;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    const-class v0, Lcom/tapjoy/internal/et;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/et;->c:Ljava/lang/String;

    .line 22
    const-class v0, Landroid/net/Proxy;

    const-string v1, "getDefaultHost"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/et;->a:Ljava/lang/reflect/Method;

    .line 23
    const-class v0, Landroid/net/Proxy;

    const-string v1, "getDefaultPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/et;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/et;->b:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/tapjoy/internal/fh;-><init>()V

    .line 17
    iput-object v3, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    .line 18
    iput v2, p0, Lcom/tapjoy/internal/et;->e:I

    .line 29
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iput-object v0, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    .line 34
    :cond_0
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/et;->e:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tapjoy/internal/et;->e:I

    if-nez v0, :cond_4

    .line 50
    :cond_2
    sget-object v0, Lcom/tapjoy/internal/et;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/internal/et;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/et;->e:I

    .line 54
    :cond_3
    sget-object v0, Lcom/tapjoy/internal/et;->a:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/internal/et;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_4

    .line 56
    iput-object v0, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    .line 58
    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tapjoy/internal/et;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/tapjoy/internal/et;->e:I

    return v0
.end method
