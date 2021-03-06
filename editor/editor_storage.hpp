#pragma once

#include "3party/pugixml/src/pugixml.hpp"

namespace editor
{
// Editor storage interface.
class StorageBase
{
public:
  virtual ~StorageBase() = default;

  virtual bool Save(pugi::xml_document const & doc) = 0;
  virtual bool Load(pugi::xml_document & doc) = 0;
  virtual void Reset() = 0;
};

// Class which saves/loads edits to/from local file.
class LocalStorage : public StorageBase
{
public:
  // StorageBase overrides:
  bool Save(pugi::xml_document const & doc) override;
  bool Load(pugi::xml_document & doc) override;
  void Reset() override;
};

// Class which saves/loads edits to/from xml_document class instance.
class InMemoryStorage : public StorageBase
{
public:
  // StorageBase overrides:
  bool Save(pugi::xml_document const & doc) override;
  bool Load(pugi::xml_document & doc) override;
  void Reset() override;

private:
  pugi::xml_document m_doc;
};
}  // namespace editor
