.class public Lcom/fyber/utils/testsuite/TestSuiteActivity;
.super Landroid/app/Activity;
.source "TestSuiteActivity.java"

# interfaces
.implements Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/fyber/utils/testsuite/IntegrationReport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(F)I
    .locals 2

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->b()Lcom/fyber/Fyber$Settings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$Settings;->getUIString(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-direct {p0, v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v0

    .line 176
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 186
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 187
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 192
    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 193
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 195
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 196
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 199
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/testsuite/MediationBundleInfo;

    .line 2268
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2269
    const/16 v1, 0x10

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2270
    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 2271
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2272
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2274
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2275
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 2276
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2279
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/MediationBundleInfo;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2280
    const v1, -0xb350b0

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2281
    const-string v1, "Started Bundle"

    .line 2290
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2292
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2293
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2294
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2295
    const/high16 v7, 0x40400000    # 3.0f

    invoke-direct {p0, v7}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v7

    .line 2296
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2297
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2298
    const/high16 v1, -0x1000000

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2299
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/MediationBundleInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    .line 2300
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2301
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/MediationBundleInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 2302
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v1

    .line 2303
    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2305
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3260
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3261
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 3262
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3263
    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2282
    :cond_0
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/MediationBundleInfo;->isIntegrated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2283
    const v1, -0xbbcca

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2284
    const-string v1, "Not Started Bundle"

    goto/16 :goto_1

    .line 2286
    :cond_1
    const/16 v1, -0x14c5

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2287
    const-string v1, "Missing Bundle"

    goto/16 :goto_1

    .line 2302
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 206
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 207
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    const v1, -0x8a8a8b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 153
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 156
    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, v2}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v2

    .line 157
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 168
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/testsuite/MediationBundleInfo;

    .line 251
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/MediationBundleInfo;->isIntegrated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_1
    return-void
.end method


# virtual methods
.method public onAnalysisFailed(Lcom/fyber/utils/testsuite/IntegrationAnalyzer$FailReason;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 141
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->SDK_NOT_STARTED:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x2cd0d1

    const-string v2, "Hint Text Info"

    invoke-direct {p0, v0, v1, v2}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    return-void
.end method

.method public onAnalysisSucceeded(Lcom/fyber/utils/testsuite/IntegrationReport;)V
    .locals 4

    .prologue
    const v2, -0x227cb

    .line 119
    iput-object p1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->d:Lcom/fyber/utils/testsuite/IntegrationReport;

    .line 120
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    invoke-virtual {p1}, Lcom/fyber/utils/testsuite/IntegrationReport;->isAnnotationsCorrectlyIntegrated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fyber/utils/testsuite/IntegrationReport;->isAnnotationsCompatible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    :cond_0
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ANNOTATIONS_PROBLEM_DESCRIPTION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x8a8a8b

    const-string v2, "Sub Hint Text Info"

    invoke-direct {p0, v0, v1, v2}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ANNOTATIONS_PROBLEM:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x2cd0d1

    const-string v2, "Hint Text Info"

    invoke-direct {p0, v0, v1, v2}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 2219
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->d:Lcom/fyber/utils/testsuite/IntegrationReport;

    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/IntegrationReport;->getStartedBundles()Ljava/util/List;

    move-result-object v0

    .line 2221
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2222
    new-instance v1, Lcom/fyber/utils/testsuite/a;

    invoke-direct {v1}, Lcom/fyber/utils/testsuite/a;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2223
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->STARTED_BUNDLES_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->STARTED_BUNDLES_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 2224
    invoke-static {v2}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 2223
    invoke-direct {p0, v1, v2, v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 2230
    :cond_2
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->d:Lcom/fyber/utils/testsuite/IntegrationReport;

    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/IntegrationReport;->getUnstartedBundles()Ljava/util/List;

    move-result-object v0

    .line 2232
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2235
    new-instance v3, Lcom/fyber/utils/testsuite/a;

    invoke-direct {v3}, Lcom/fyber/utils/testsuite/a;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2237
    invoke-static {v0, v1, v2}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2239
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2240
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->BUNDLES_NOT_STARTED_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->BUNDLES_NOT_STARTED_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v3}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 2243
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2244
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->MISSING_BUNDLES_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->MISSING_BUNDLES_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 134
    :cond_4
    return-void

    .line 126
    :cond_5
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->TOKEN_MISSING:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hint Text Info"

    invoke-direct {p0, v0, v2, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_6
    invoke-virtual {p1}, Lcom/fyber/utils/testsuite/IntegrationReport;->getStartedBundles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/fyber/utils/testsuite/IntegrationReport;->getUnstartedBundles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->NO_BUNDLES:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hint Text Info"

    invoke-direct {p0, v0, v2, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0, v8}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->requestWindowFeature(I)Z

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a:Landroid/widget/LinearLayout;

    .line 40
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 43
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1055
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1056
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1146
    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v3, v8, [I

    const v4, 0x10102eb

    aput v4, v3, v10

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1147
    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 1148
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1056
    invoke-direct {v1, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(F)I

    move-result v1

    .line 1058
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1059
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1060
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1061
    const v1, -0xff6322

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1063
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1064
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1065
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1066
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1067
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1070
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1071
    const-string v3, "Test Suite Info"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1072
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1073
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    sget-object v3, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->TEST_SUITE_VERSION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v3}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "1.0.0"

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1077
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1078
    const-string v4, "SDK Info"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1079
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    sget-object v4, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->SDK_VERSION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v4}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    sget-object v6, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1083
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1084
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1086
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1088
    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2092
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2093
    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 2094
    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 2095
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2097
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    .line 2098
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2099
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2100
    iget-object v2, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2101
    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2102
    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2104
    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2108
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2109
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->b:Landroid/widget/ProgressBar;

    .line 2110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2111
    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2112
    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2114
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/fyber/utils/testsuite/TestSuiteActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/fyber/utils/testsuite/TestSuiteActivity;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-static {p0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->analyze(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;)V

    .line 52
    return-void
.end method
