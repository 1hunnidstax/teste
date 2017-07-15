.class Lcom/inmobi/ads/aj$b;
.super Ljava/lang/Object;
.source "NativeV2ContainerAsset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/aj;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/aj;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/inmobi/ads/aj$b;->a:Lcom/inmobi/ads/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/aj$b;->b:I

    .line 123
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/ads/NativeV2Asset;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/inmobi/ads/aj$b;->a:Lcom/inmobi/ads/aj;

    invoke-static {v0}, Lcom/inmobi/ads/aj;->b(Lcom/inmobi/ads/aj;)[Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/aj$b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/inmobi/ads/aj$b;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/inmobi/ads/aj$b;->b:I

    iget-object v1, p0, Lcom/inmobi/ads/aj$b;->a:Lcom/inmobi/ads/aj;

    invoke-static {v1}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/aj;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/inmobi/ads/aj$b;->a()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
