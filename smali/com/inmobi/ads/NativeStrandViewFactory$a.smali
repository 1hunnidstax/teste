.class final Lcom/inmobi/ads/NativeStrandViewFactory$a;
.super Ljava/lang/Object;
.source "NativeStrandViewFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
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


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$a;->a:Ljava/lang/ref/WeakReference;

    .line 851
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$a;->b:Ljava/lang/ref/WeakReference;

    .line 852
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 857
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 858
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 859
    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 861
    :cond_0
    return-void
.end method
