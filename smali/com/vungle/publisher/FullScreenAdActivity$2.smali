.class final Lcom/vungle/publisher/FullScreenAdActivity$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/FullScreenAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/FullScreenAdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vungle/publisher/FullScreenAdActivity$2;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v0, 0x0

    .line 138
    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity$2;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-virtual {v1}, Lcom/vungle/publisher/FullScreenAdActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v3

    .line 141
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 142
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    .line 143
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    .line 145
    :goto_0
    iget-object v4, p0, Lcom/vungle/publisher/FullScreenAdActivity$2;->a:Lcom/vungle/publisher/FullScreenAdActivity;

    invoke-static {v4}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/FullScreenAdActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    return-object p2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "VungleAd"

    const-string v2, "Exception setting root view padding to avoid system controls overlap"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move v1, v0

    move v2, v0

    move v3, v0

    goto :goto_0
.end method
