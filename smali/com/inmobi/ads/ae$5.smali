.class Lcom/inmobi/ads/ae$5;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeV2Asset;

.field final synthetic b:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/inmobi/ads/ae$5;->b:Lcom/inmobi/ads/ae;

    iput-object p2, p0, Lcom/inmobi/ads/ae$5;->a:Lcom/inmobi/ads/NativeV2Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/inmobi/ads/ae$5;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->e(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/ae$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ae$5;->a:Lcom/inmobi/ads/NativeV2Asset;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/ae$a;->a(Lcom/inmobi/ads/NativeV2Asset;)V

    .line 296
    return-void
.end method
