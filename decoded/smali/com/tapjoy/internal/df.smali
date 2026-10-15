.class public abstract Lcom/tapjoy/internal/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ds;


# static fields
.field private static final a:Lcom/tapjoy/internal/dk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/tapjoy/internal/dk;->a()Lcom/tapjoy/internal/dk;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/df;->a:Lcom/tapjoy/internal/dk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dq;
    .locals 1

    .prologue
    .line 70
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/tapjoy/internal/dq;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    instance-of v0, p0, Lcom/tapjoy/internal/de;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/dv;->a()Lcom/tapjoy/internal/dn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v0, Lcom/tapjoy/internal/dv;

    invoke-direct {v0}, Lcom/tapjoy/internal/dv;-><init>()V

    goto :goto_0

    .line 75
    :cond_1
    return-object p0
.end method

.method private a(Ljava/io/InputStream;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;
    .locals 3

    .prologue
    .line 191
    new-instance v1, Lcom/tapjoy/internal/di;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/di;-><init>(Ljava/io/InputStream;)V

    .line 192
    invoke-virtual {p0, v1, p2}, Lcom/tapjoy/internal/df;->a(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dq;

    .line 194
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/di;->a(I)V
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
.end method

.method private a([BILcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;
    .locals 3

    .prologue
    .line 136
    :try_start_0
    invoke-static {p1, p2}, Lcom/tapjoy/internal/di;->a([BI)Lcom/tapjoy/internal/di;

    move-result-object v1

    .line 137
    invoke-virtual {p0, v1, p3}, Lcom/tapjoy/internal/df;->a(Lcom/tapjoy/internal/di;Lcom/tapjoy/internal/dk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dq;
    :try_end_0
    .catch Lcom/tapjoy/internal/dn; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/di;->a(I)V
    :try_end_1
    .catch Lcom/tapjoy/internal/dn; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    return-object v0

    .line 140
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/dn;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dn;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/tapjoy/internal/dn; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    :catch_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/tapjoy/internal/df;->a:Lcom/tapjoy/internal/dk;

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/df;->a(Ljava/io/InputStream;Lcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/df;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a([B)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/tapjoy/internal/df;->a:Lcom/tapjoy/internal/dk;

    array-length v1, p1

    invoke-direct {p0, p1, v1, v0}, Lcom/tapjoy/internal/df;->a([BILcom/tapjoy/internal/dk;)Lcom/tapjoy/internal/dq;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/df;->a(Lcom/tapjoy/internal/dq;)Lcom/tapjoy/internal/dq;

    move-result-object v0

    return-object v0
.end method
