// SPDX-FileCopyrightText: 2022 UnionTech Software Technology Co., Ltd.
//
// SPDX-License-Identifier: GPL-3.0-or-later

#include <QDebug>
#include <gtest/gtest.h>
#include "../../src/utils/audioutils.h"

using namespace testing;

class AudioUtilsTest: public testing::Test
{

public:
    AudioUtils audioUtils ;
    virtual void SetUp() override
    {
        qDebug() << "start AudioUtilsTest";
    }

    virtual void TearDown() override
    {
        std::cout << "end AudioUtilsTest" << std::endl;
    }
};

TEST_F(AudioUtilsTest, currentAudioChannel)
{
    QString channel = audioUtils.currentAudioChannel();
    //EXPECT_FALSE(channel.isEmpty());
}

TEST_F(AudioUtilsTest, getDefaultDeviceName)
{
    QString sinkName = audioUtils.getDefaultDeviceName(AudioUtils::DefaultAudioType::Sink);
    QString sourceName = audioUtils.getDefaultDeviceName(AudioUtils::DefaultAudioType::Source);
    //EXPECT_FALSE(channel.isEmpty());
}