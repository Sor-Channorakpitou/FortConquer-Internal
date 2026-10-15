.class public Lorg/anddev/andengine/util/path/Path$Step;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/util/path/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Step"
.end annotation


# instance fields
.field private final mTileColumn:I

.field private final mTileRow:I

.field final synthetic this$0:Lorg/anddev/andengine/util/path/Path;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/util/path/Path;II)V
    .locals 0
    .param p2, "pTileColumn"    # I
    .param p3, "pTileRow"    # I

    .prologue
    .line 138
    iput-object p1, p0, Lorg/anddev/andengine/util/path/Path$Step;->this$0:Lorg/anddev/andengine/util/path/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p2, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    .line 140
    iput p3, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    .line 141
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "pOther"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    if-ne p0, p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 170
    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 173
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 175
    check-cast v0, Lorg/anddev/andengine/util/path/Path$Step;

    .line 176
    .local v0, "other":Lorg/anddev/andengine/util/path/Path$Step;
    iget v3, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    iget v4, v0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 177
    goto :goto_0

    .line 179
    :cond_4
    iget v3, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    iget v4, v0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 180
    goto :goto_0
.end method

.method public getTileColumn()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    return v0
.end method

.method public getTileRow()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    iget v1, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    add-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    return v0
.end method
