.class public final Lcom/tapjoy/internal/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/tapjoy/internal/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 344
    const-string v0, ", "

    new-instance v1, Lcom/tapjoy/internal/ct;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/ct;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tapjoy/internal/cx;->a:Lcom/tapjoy/internal/ct;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .prologue
    .line 341
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
