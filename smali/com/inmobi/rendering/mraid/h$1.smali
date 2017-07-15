.class Lcom/inmobi/rendering/mraid/h$1;
.super Ljava/lang/Object;
.source "MraidResizeProcessor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/h;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/h;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/h;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/h$1;->a:Lcom/inmobi/rendering/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/h$1;->a:Lcom/inmobi/rendering/mraid/h;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/h;->a(Lcom/inmobi/rendering/mraid/h;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->b()V

    .line 87
    return-void
.end method
