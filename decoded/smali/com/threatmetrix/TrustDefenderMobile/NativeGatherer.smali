.class public final enum Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;
    }
.end annotation


# static fields
.field public static final enum a:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

.field private static final synthetic d:[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;


# instance fields
.field private final b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->a:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    const/4 v1, 0x0

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->a:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->d:[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->c:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;-><init>(Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->d:[Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->hashFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1, p2}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    return v0
.end method

.method public final a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_1

    const-string v0, " available "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->b:I

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->c:I

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finding more packages "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v1, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v1, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->d:I

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget v3, v3, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->c:I

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->findPackages(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->d:I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->checkURLs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_1
    return-object v0

    .line 87
    :cond_1
    const-string v0, "not available "

    goto :goto_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->getRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    iget-boolean v0, v0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->a:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer;->b:Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/NativeGatherer$NativeGathererHelper;->getFontList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
