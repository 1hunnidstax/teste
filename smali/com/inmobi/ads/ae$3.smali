.class Lcom/inmobi/ads/ae$3;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ae;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/inmobi/ads/ae$3;->b:Lcom/inmobi/ads/ae;

    iput-object p2, p0, Lcom/inmobi/ads/ae$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/inmobi/ads/ae$3;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    return-void
.end method
