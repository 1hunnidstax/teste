.class Lcom/miniclip/ui/HTMLDialog$2;
.super Landroid/webkit/WebViewClient;
.source "HTMLDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ui/HTMLDialog;->setUpWebView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/ui/HTMLDialog;


# direct methods
.method constructor <init>(Lcom/miniclip/ui/HTMLDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x2

    .line 216
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->_isWebViewAttached:Z
    invoke-static {v0}, Lcom/miniclip/ui/HTMLDialog;->access$200(Lcom/miniclip/ui/HTMLDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->_wasWebviewDismissed:Z
    invoke-static {v0}, Lcom/miniclip/ui/HTMLDialog;->access$300(Lcom/miniclip/ui/HTMLDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->mContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miniclip/ui/HTMLDialog;->access$500(Lcom/miniclip/ui/HTMLDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->mWebViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/miniclip/ui/HTMLDialog;->access$400(Lcom/miniclip/ui/HTMLDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->mContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/miniclip/ui/HTMLDialog;->access$500(Lcom/miniclip/ui/HTMLDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/miniclip/ui/HTMLDialog;->access$600(Lcom/miniclip/ui/HTMLDialog;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    const/4 v1, 0x1

    # setter for: Lcom/miniclip/ui/HTMLDialog;->_isWebViewAttached:Z
    invoke-static {v0, v1}, Lcom/miniclip/ui/HTMLDialog;->access$202(Lcom/miniclip/ui/HTMLDialog;Z)Z

    .line 222
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/ui/HTMLDialog$2$1;

    invoke-direct {v1, p0}, Lcom/miniclip/ui/HTMLDialog$2$1;-><init>(Lcom/miniclip/ui/HTMLDialog$2;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 231
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 189
    if-eqz p2, :cond_2

    const-string v6, "market:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 193
    .local v4, "rateIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "otherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 196
    .local v1, "otherApp":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.vending"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 198
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 199
    .local v2, "otherAppActivity":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v0, "componentName":Landroid/content/ComponentName;
    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 205
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "otherApp":Landroid/content/pm/ResolveInfo;
    .end local v2    # "otherAppActivity":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v5, 0x1

    .line 211
    .end local v3    # "otherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "rateIntent":Landroid/content/Intent;
    :cond_2
    return v5
.end method
