.class Lcom/inmobi/ads/NativeStrandViewFactory$2;
.super Ljava/lang/Object;
.source "NativeStrandViewFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeStrandTimerView;Lcom/inmobi/ads/NativeV2Asset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandTimerView;

.field final synthetic b:Lcom/inmobi/ads/NativeStrandViewFactory;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandViewFactory;Lcom/inmobi/ads/NativeStrandTimerView;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$2;->b:Lcom/inmobi/ads/NativeStrandViewFactory;

    iput-object p2, p0, Lcom/inmobi/ads/NativeStrandViewFactory$2;->a:Lcom/inmobi/ads/NativeStrandTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$2;->b:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->c(Lcom/inmobi/ads/NativeStrandViewFactory;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$2;->a:Lcom/inmobi/ads/NativeStrandTimerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandTimerView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$2;->a:Lcom/inmobi/ads/NativeStrandTimerView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandTimerView;->a()V

    .line 725
    :cond_0
    return-void
.end method
