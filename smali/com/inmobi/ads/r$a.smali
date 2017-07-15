.class final Lcom/inmobi/ads/r$a;
.super Landroid/database/ContentObserver;
.source "IasTrackedNativeV2VideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/r;)V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 246
    iput-object p1, p0, Lcom/inmobi/ads/r$a;->a:Landroid/content/Context;

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/r$a;->b:I

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/r$a;->d:Z

    .line 249
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/r$a;->c:Ljava/lang/ref/WeakReference;

    .line 250
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/r$a;Z)Z
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/inmobi/ads/r$a;->d:Z

    return p1
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/inmobi/ads/r$a;->a:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 254
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 261
    iget-object v0, p0, Lcom/inmobi/ads/r$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/inmobi/ads/r$a;->a()I

    move-result v1

    .line 264
    iget v0, p0, Lcom/inmobi/ads/r$a;->b:I

    if-eq v1, v0, :cond_0

    .line 265
    iput v1, p0, Lcom/inmobi/ads/r$a;->b:I

    .line 267
    iget-object v0, p0, Lcom/inmobi/ads/r$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/r;

    .line 268
    iget-boolean v2, p0, Lcom/inmobi/ads/r$a;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {v0, v1}, Lcom/inmobi/ads/r;->a(Lcom/inmobi/ads/r;I)V

    .line 273
    :cond_0
    return-void
.end method
