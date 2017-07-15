.class public Lcom/miniclip/ui/HTMLDialog;
.super Landroid/app/Dialog;
.source "HTMLDialog.java"


# static fields
.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private _isWebViewAttached:Z

.field private _wasWebviewDismissed:Z

.field private mBaseURL:Ljava/lang/String;

.field private mContent:Landroid/widget/FrameLayout;

.field private mCrossImage:Landroid/widget/ImageView;

.field private mHtml:Ljava/lang/String;

.field private mIsInternalURL:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewContainer:Landroid/widget/LinearLayout;

.field private mWebpageID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/miniclip/ui/HTMLDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BIJ)V
    .locals 4
    .param p1, "baseURL"    # Ljava/lang/String;
    .param p2, "html"    # [B
    .param p3, "isInternalURL"    # I
    .param p4, "webpageID"    # J

    .prologue
    .line 63
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1030010

    invoke-direct {p0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lcom/miniclip/ui/HTMLDialog;->mIsInternalURL:I

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mBaseURL:Ljava/lang/String;

    .line 65
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mHtml:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/miniclip/ui/HTMLDialog;->mBaseURL:Ljava/lang/String;

    .line 68
    iput-wide p4, p0, Lcom/miniclip/ui/HTMLDialog;->mWebpageID:J

    .line 70
    iput p3, p0, Lcom/miniclip/ui/HTMLDialog;->mIsInternalURL:I

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miniclip/ui/HTMLDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Webpage"

    const-string v2, "Html source code not in UTF encoding"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miniclip/ui/HTMLDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebpageID:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/miniclip/ui/HTMLDialog;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;
    .param p1, "x1"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/miniclip/ui/HTMLDialog;->handleBackButtonPressNative(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/miniclip/ui/HTMLDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/miniclip/ui/HTMLDialog;->_isWebViewAttached:Z

    return v0
.end method

.method static synthetic access$202(Lcom/miniclip/ui/HTMLDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miniclip/ui/HTMLDialog;->_isWebViewAttached:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miniclip/ui/HTMLDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/miniclip/ui/HTMLDialog;->_wasWebviewDismissed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miniclip/ui/HTMLDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miniclip/ui/HTMLDialog;->_wasWebviewDismissed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miniclip/ui/HTMLDialog;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miniclip/ui/HTMLDialog;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miniclip/ui/HTMLDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miniclip/ui/HTMLDialog;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/HTMLDialog;
    .param p1, "x1"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/miniclip/ui/HTMLDialog;->dismissLoadingPopupNative(J)V

    return-void
.end method

.method private createCrossImage()V
    .locals 3

    .prologue
    .line 135
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;

    .line 137
    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/miniclip/ui/HTMLDialog$1;

    invoke-direct {v2, p0}, Lcom/miniclip/ui/HTMLDialog$1;-><init>(Lcom/miniclip/ui/HTMLDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/miniclip/ui/HTMLDialog;->useSmallCloseButtonNative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget v0, Lcom/miniclip/prime/R$drawable;->close_webpage_small:I

    .line 156
    .local v0, "resourceId":I
    :goto_0
    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;

    sget v2, Lcom/miniclip/prime/R$id;->close_webpage_clickable:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 164
    return-void

    .line 154
    .end local v0    # "resourceId":I
    :cond_0
    sget v0, Lcom/miniclip/prime/R$drawable;->close_webpage_big:I

    .restart local v0    # "resourceId":I
    goto :goto_0
.end method

.method private native dismissLoadingPopupNative(J)V
.end method

.method private native handleBackButtonPressNative(J)V
.end method

.method private setSystemUiVisibility()V
    .locals 3

    .prologue
    .line 258
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 259
    const/4 v0, 0x2

    .line 260
    .local v0, "systemUiFlags":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 261
    or-int/lit16 v0, v0, 0x704

    .line 265
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 266
    or-int/lit16 v0, v0, 0x1000

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 271
    .end local v0    # "systemUiFlags":I
    :cond_1
    return-void
.end method

.method private setUpWebView(I)V
    .locals 8
    .param p1, "margin"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 167
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebViewContainer:Landroid/widget/LinearLayout;

    .line 168
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    .line 169
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    sget v1, Lcom/miniclip/prime/R$id;->webview_with_webpage:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 170
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 173
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 177
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 178
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 183
    :cond_0
    iput-boolean v7, p0, Lcom/miniclip/ui/HTMLDialog;->_wasWebviewDismissed:Z

    .line 186
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/miniclip/ui/HTMLDialog$2;

    invoke-direct {v1, p0}, Lcom/miniclip/ui/HTMLDialog$2;-><init>(Lcom/miniclip/ui/HTMLDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 234
    iget v0, p0, Lcom/miniclip/ui/HTMLDialog;->mIsInternalURL:I

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 243
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/miniclip/ui/HTMLDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 247
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    iput-boolean v7, p0, Lcom/miniclip/ui/HTMLDialog;->_isWebViewAttached:Z

    .line 255
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mBaseURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/ui/HTMLDialog;->mHtml:Ljava/lang/String;

    const-string v3, "text/html"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showHTMLDialog(Ljava/lang/String;[BIJ)V
    .locals 7
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "webPageData"    # [B
    .param p2, "isInternalURL"    # I
    .param p3, "webpageId"    # J

    .prologue
    .line 296
    sget-object v6, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v0, Lcom/miniclip/ui/HTMLDialog$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miniclip/ui/HTMLDialog$3;-><init>(Ljava/lang/String;[BIJ)V

    invoke-static {v6, v0}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method private native useSmallCloseButtonNative()Z
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 106
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mContent:Landroid/widget/FrameLayout;

    .line 119
    invoke-direct {p0}, Lcom/miniclip/ui/HTMLDialog;->createCrossImage()V

    .line 124
    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 125
    .local v0, "crossWidth":I
    div-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/miniclip/ui/HTMLDialog;->setUpWebView(I)V

    .line 130
    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/miniclip/ui/HTMLDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 95
    iget-wide v0, p0, Lcom/miniclip/ui/HTMLDialog;->mWebpageID:J

    invoke-direct {p0, v0, v1}, Lcom/miniclip/ui/HTMLDialog;->handleBackButtonPressNative(J)V

    .line 96
    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->dismiss()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/ui/HTMLDialog;->_isWebViewAttached:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/ui/HTMLDialog;->_wasWebviewDismissed:Z

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 86
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/miniclip/ui/HTMLDialog;->setSystemUiVisibility()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 284
    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 286
    invoke-direct {p0}, Lcom/miniclip/ui/HTMLDialog;->setSystemUiVisibility()V

    .line 289
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 292
    invoke-virtual {p0}, Lcom/miniclip/ui/HTMLDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 293
    return-void
.end method
