.class Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;
.super Ljava/lang/Object;
.source "NativeStrandViewFactory.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PicassoCallback"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/inmobi/ads/NativeV2Asset;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;->a:Ljava/lang/ref/WeakReference;

    .line 828
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;->b:Ljava/lang/ref/WeakReference;

    .line 829
    iput-object p3, p0, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;->c:Lcom/inmobi/ads/NativeV2Asset;

    .line 830
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;->c:Lcom/inmobi/ads/NativeV2Asset;

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 839
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 834
    return-void
.end method
