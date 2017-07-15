.class public Lcom/miniclip/nativeJNI/HtmlDialog;
.super Landroid/app/Dialog;
.source "HtmlDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;
    }
.end annotation


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F

.field static final DIMENSIONS_DIFF_PORTRAIT:[F

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams;

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/FrameLayout;

.field private mCrossImage:Landroid/widget/ImageView;

.field private mHtml:Ljava/lang/String;

.field private mIsInternalURL:I

.field private mListener:Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 38
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miniclip/nativeJNI/HtmlDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 39
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miniclip/nativeJNI/HtmlDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/miniclip/nativeJNI/HtmlDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 38
    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x42700000    # 60.0f
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x42200000    # 40.0f
        0x42700000    # 60.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "isInternalURL"    # I
    .param p4, "listener"    # Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

    .prologue
    .line 57
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mIsInternalURL:I

    .line 58
    iput-object p2, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mHtml:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mListener:Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

    .line 60
    iput p3, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mIsInternalURL:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

    .prologue
    .line 67
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mIsInternalURL:I

    .line 68
    iput-object p2, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mHtml:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mListener:Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/nativeJNI/HtmlDialog;)Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/nativeJNI/HtmlDialog;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mListener:Lcom/miniclip/nativeJNI/HtmlDialog$HtmlDialogListener;

    return-object v0
.end method

.method private createCrossImage()V
    .locals 5

    .prologue
    .line 106
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mCrossImage:Landroid/widget/ImageView;

    .line 108
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mCrossImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/miniclip/nativeJNI/HtmlDialog$1;

    invoke-direct {v2, p0}, Lcom/miniclip/nativeJNI/HtmlDialog$1;-><init>(Lcom/miniclip/nativeJNI/HtmlDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "close"

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "resourceId":I
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method

.method private setSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 172
    return-void
.end method

.method private setUpWebView(I)V
    .locals 7
    .param p1, "margin"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "webViewContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    .line 132
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 133
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mIsInternalURL:I

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mHtml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 151
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v2, Lcom/miniclip/nativeJNI/HtmlDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 155
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 160
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    return-void

    .line 143
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mHtml:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html; charset=UTF-8"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 77
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mContent:Landroid/widget/FrameLayout;

    .line 90
    invoke-direct {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->createCrossImage()V

    .line 95
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 96
    .local v0, "crossWidth":I
    div-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/miniclip/nativeJNI/HtmlDialog;->setUpWebView(I)V

    .line 101
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mCrossImage:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v1, p0, Lcom/miniclip/nativeJNI/HtmlDialog;->mContent:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/miniclip/nativeJNI/HtmlDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 184
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->setSystemUiVisibility()V

    .line 191
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 194
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/HtmlDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 195
    return-void
.end method
