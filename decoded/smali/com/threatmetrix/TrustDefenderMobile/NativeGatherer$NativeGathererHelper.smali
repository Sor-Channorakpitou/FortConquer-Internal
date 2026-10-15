.class Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeGathererHelper"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 22
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->f:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->g:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->b:I

    .line 17
    const/16 v0, 0xc8

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->c:I

    .line 18
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->c:I

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->d:I

    .line 19
    const-string v0, "/system/app"

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->e:Ljava/lang/String;

    .line 26
    :try_start_0
    const-string v0, "trustdefender-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/tapjoy/internal/fe;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->init(I)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    :try_start_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->g:Ljava/lang/String;

    .line 31
    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->c:I

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->e:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->findPackages(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->b:I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 42
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    .line 44
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeGatherer() complete, found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    return-void

    .line 36
    :catch_0
    move-exception v0

    move v0, v1

    .line 41
    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 40
    :goto_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->g:Ljava/lang/String;

    const-string v3, "Native code:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 38
    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method native checkURLs([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->finit()V

    .line 68
    return-void
.end method

.method native findPackages(ILjava/lang/String;)I
.end method

.method native finit()V
.end method

.method native getFontList(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method native getRandomString(I)Ljava/lang/String;
.end method

.method native hashFile(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native init(I)Z
.end method

.method native md5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native sha1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native urlEncode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
