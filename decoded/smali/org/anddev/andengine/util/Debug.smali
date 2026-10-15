.class public Lorg/anddev/andengine/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Lorg/anddev/andengine/util/constants/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/Debug$DebugLevel;
    }
.end annotation


# static fields
.field private static sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

.field private static sDebugTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "AndEngine"

    sput-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    .line 24
    sget-object v0, Lorg/anddev/andengine/util/Debug$DebugLevel;->VERBOSE:Lorg/anddev/andengine/util/Debug$DebugLevel;

    sput-object v0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "pMessage"    # Ljava/lang/String;
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    sget-object v1, Lorg/anddev/andengine/util/Debug$DebugLevel;->DEBUG:Lorg/anddev/andengine/util/Debug$DebugLevel;

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/Debug$DebugLevel;->access$2(Lorg/anddev/andengine/util/Debug$DebugLevel;Lorg/anddev/andengine/util/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "pMessage"    # Ljava/lang/String;
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 118
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    sget-object v1, Lorg/anddev/andengine/util/Debug$DebugLevel;->ERROR:Lorg/anddev/andengine/util/Debug$DebugLevel;

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/Debug$DebugLevel;->access$2(Lorg/anddev/andengine/util/Debug$DebugLevel;Lorg/anddev/andengine/util/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    if-nez p1, :cond_1

    .line 120
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method public static getDebugLevel()Lorg/anddev/andengine/util/Debug$DebugLevel;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    return-object v0
.end method

.method public static getDebugTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/Debug;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "pMessage"    # Ljava/lang/String;
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    sget-object v1, Lorg/anddev/andengine/util/Debug$DebugLevel;->INFO:Lorg/anddev/andengine/util/Debug$DebugLevel;

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/Debug$DebugLevel;->access$2(Lorg/anddev/andengine/util/Debug$DebugLevel;Lorg/anddev/andengine/util/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_0
    return-void
.end method

.method public static setDebugLevel(Lorg/anddev/andengine/util/Debug$DebugLevel;)V
    .locals 2
    .param p0, "pDebugLevel"    # Lorg/anddev/andengine/util/Debug$DebugLevel;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pDebugLevel must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    sput-object p0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    .line 51
    return-void
.end method

.method public static setDebugTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "pDebugTag"    # Ljava/lang/String;

    .prologue
    .line 39
    sput-object p0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/Debug;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "pMessage"    # Ljava/lang/String;
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    sget-object v1, Lorg/anddev/andengine/util/Debug$DebugLevel;->VERBOSE:Lorg/anddev/andengine/util/Debug$DebugLevel;

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/Debug$DebugLevel;->access$2(Lorg/anddev/andengine/util/Debug$DebugLevel;Lorg/anddev/andengine/util/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/Debug;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "pMessage"    # Ljava/lang/String;
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugLevel:Lorg/anddev/andengine/util/Debug$DebugLevel;

    sget-object v1, Lorg/anddev/andengine/util/Debug$DebugLevel;->WARNING:Lorg/anddev/andengine/util/Debug$DebugLevel;

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/Debug$DebugLevel;->access$2(Lorg/anddev/andengine/util/Debug$DebugLevel;Lorg/anddev/andengine/util/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    if-nez p1, :cond_1

    .line 102
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    sget-object v0, Lorg/anddev/andengine/util/Debug;->sDebugTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/anddev/andengine/util/Debug;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method
