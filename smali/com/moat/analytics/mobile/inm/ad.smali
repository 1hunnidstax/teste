.class Lcom/moat/analytics/mobile/inm/ad;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/inm/ac;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/inm/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/ac;->a(Lcom/moat/analytics/mobile/inm/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/inm/ac;->a(Lcom/moat/analytics/mobile/inm/ac;Z)Z

    iget-object v6, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    new-instance v0, Lcom/moat/analytics/mobile/inm/bd;

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    invoke-static {v1}, Lcom/moat/analytics/mobile/inm/ac;->b(Lcom/moat/analytics/mobile/inm/ac;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    invoke-static {v2}, Lcom/moat/analytics/mobile/inm/ac;->c(Lcom/moat/analytics/mobile/inm/ac;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    iget-object v4, v4, Lcom/moat/analytics/mobile/inm/ac;->a:Lcom/moat/analytics/mobile/inm/a;

    iget-object v5, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    iget-object v5, v5, Lcom/moat/analytics/mobile/inm/ac;->b:Lcom/moat/analytics/mobile/inm/ao;

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/inm/bd;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/inm/a;Lcom/moat/analytics/mobile/inm/ao;)V

    iput-object v0, v6, Lcom/moat/analytics/mobile/inm/ac;->c:Lcom/moat/analytics/mobile/inm/bc;

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    iget-object v0, v0, Lcom/moat/analytics/mobile/inm/ac;->c:Lcom/moat/analytics/mobile/inm/bc;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/bc;->c()Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/ad;->a:Lcom/moat/analytics/mobile/inm/ac;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/ac;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
