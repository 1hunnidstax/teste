.class Lcom/inmobi/ads/bb;
.super Lcom/inmobi/ads/NativeV2ScrollableContainer;
.source "ScrollableDeckFreeContainer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/ads/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/NativeV2ScrollableContainer;-><init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bb;->c:Z

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/aj;Lcom/inmobi/ads/ap;IILcom/inmobi/ads/NativeV2ScrollableContainer$a;)V
    .locals 6
    .param p1    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Lcom/inmobi/ads/aj;->b(I)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 33
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 34
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 38
    :goto_0
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/inmobi/ads/bb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/bb;->b:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iget-object v0, p0, Lcom/inmobi/ads/bb;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 44
    invoke-virtual {p0}, Lcom/inmobi/ads/bb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 45
    iget-object v1, p0, Lcom/inmobi/ads/bb;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object v0, p0, Lcom/inmobi/ads/bb;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bb;->addView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/inmobi/ads/bb;->b:Landroid/support/v7/widget/RecyclerView;

    check-cast p2, Lcom/inmobi/ads/NativeV2RecyclerViewAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 48
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method
