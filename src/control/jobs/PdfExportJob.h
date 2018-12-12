/*
 * Xournal++
 *
 * A job to export PDF
 *
 * @author Xournal++ Team
 * https://github.com/xournalpp/xournalpp
 *
 * @license GNU GPLv2 or later
 */

#pragma once

#include "BaseExportJob.h"

class Document;
class PageType;

enum ResetActionType
{
	ACTION_RESET = 0,
	ACTION_RESTORE = 1	
};

class PdfExportJob : public BaseExportJob
{
public:
	PdfExportJob(Control* control);

protected:
	virtual ~PdfExportJob();

public:
	void run();

protected:
	virtual void addFilterToDialog();
	virtual void prepareSavePath(path& path);
	virtual bool isUriValid(string& uri);
	void resetBackgroundType(Document* doc, PageType* pt, ResetActionType action);

private:
	XOJ_TYPE_ATTRIB;
};
